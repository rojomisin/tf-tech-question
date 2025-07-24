
resource "google_compute_instance" "web_server" {
  name         = "web-server-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  project      = "gcp-project-id"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    startup-script = templatefile("${path.module}/scripts/bootstrap.sh", {
      db_host = data.terraform_remote_state.database.outputs.instance_private_ip_address
      db_port = "5432"
      db_name = "postgres"
    })
  }
}

data "terraform_remote_state" "database" {
  backend = "local"
  config = {
    path = "../database/terraform.tfstate"
  }
}
