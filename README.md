
# Terraform Refactoring Exercise

## Objective

Refactor this Terraform project to follow best practices for managing multiple environments (dev, stg, prd) and code reuse.

## Current State

The project is currently structured with separate directories for the web and database tiers. The configuration is not reusable and is hardcoded for a single environment.

## Requirements

1.  **Modularize:** Create reusable Terraform modules for the `web` and `database` tiers.
2.  **Environments:** Implement a directory structure to manage `dev`, `stg`, and `prd` environments.
3.  **DRY Principles:** Use input variables and outputs to make the modules configurable and avoid code duplication.
4.  **State Management:** Configure remote state management for each environment.
5.  **Readme:** Update this README to explain the new structure and how to use it.

## Expected Outcome

The final project should have a clear and organized structure that is easy to manage and scale. The `dev`, `stg`, and `prd` environments should be configurable and independent of each other.
