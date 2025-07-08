# Data Pipeline for Google Sheets Integration

This project contains a set of SQL scripts and configuration files designed to create and populate tables in a Google BigQuery. The data is sourced from various platforms like Facebook Ads, Google Ads, Shopify, and QuickBooks Online (QBO).

## Project Structure

The repository is organized into the following directories:

- `ai_json_files/`: Contains JSON files that likely define the schema or metadata for different datasets from various sources. Each subdirectory corresponds to a data source (e.g., `facebook_ads_dataset`, `shopify_dataset`).

- `cloud_scheduler_configs/`: Holds configuration files for scheduling the data pipeline jobs. The `schedule_template.yaml` is likely a template for creating new schedules, probably for Google Cloud Scheduler.

- `table_creation_queries/`: Contains Data Definition Language (DDL) SQL scripts. These scripts are used to create the table schemas in the data warehouse. Each file corresponds to a specific table to be created.

- `table_insert_queries/`: Contains Data Manipulation Language (DML) SQL scripts. These scripts are used to insert data into the tables created by the `table_creation_queries`. These are likely the queries executed by the scheduled jobs.

## Workflow Overview

The data pipeline appears to follow these general steps:

1.  **Schema Definition**: The table structures for the raw and transformed data are defined in the SQL files within `table_creation_queries/`.
2.  **Data Ingestion**: Data is extracted from the source platforms. The `ai_json_files/` may be used in this step to ensure the data conforms to a specific schema.
3.  **Data Loading**: The SQL scripts in `table_insert_queries/` are executed to insert the extracted data into the corresponding tables in the data warehouse.
4.  **Scheduling**: The entire process is automated and scheduled to run at regular intervals using configurations from `cloud_scheduler_configs/`. 