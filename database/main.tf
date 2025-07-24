
module "sql_db" {
  source  = "terraform-google-modules/sql-db/google//modules/postgresql"
  version = "~> 26"

  name                 = "database-instance"
  project_id           = "gcp-project-id"
  database_version     = "POSTGRES_15"
  region               = "us-central1"
  tier                 = "db-n1-standard-1"
}
