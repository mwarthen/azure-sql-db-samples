# Azure SQL DB Samples and Best Practices

Samples and Best practices to use Azure SQL DB to build modern, mission critical application, with ease and confidence

## Running the samples

Make sure you have an Azure SQL DB database to use. If you don't have an Azure account you, you can create one for free that will also include a free Azure SQL DB tier:

https://azure.microsoft.com/en-us/free/free-account-faq/

To create a new database, follow the instructions here:

[Create Azure SQL Database](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-single-database-get-started?tabs=azure-portal)

or, if you're already comfortable with [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli), you can just execute (using Bash, via [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10), a Linux environment or [Azure Cloud Shell](https://docs.microsoft.com/en-us/azure/cloud-shell/overview))

```bash
az group create -n <my-resource-group> -l WestUS2
az sql server create -g <my-resource-group> -n <my-server-name> -u <my-user> -p <my-password>
az sql db create -g <my-resource-group> --server <my-server-name> -n DevDB --service-objective BC_Gen5_2
```

Once the database is created, you can connect to it using [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio). If you need help in setting up your first connection to Azure SQL with Azure Data Studio, this quick video will help you:

[How to connect to Azure SQL Database from Azure Data Studio](https://www.youtube.com/watch?v=Td_pYlRraQE)

Azure Data Studio supports Jupyter Notebooks. They will be used in some samples. If you never used them before, take a look here:

[Introduction to Azure Data Studio Notebooks](https://www.youtube.com/watch?v=Nt4kIHQ0IOc)

## Sample Index

1. [Restore Database](./samples/01-restore-database): Restoring a database in Azure SQL
2. Work in progress, will come soon :)
3. [Work with JSON](./samples/03-json): Working with JSON data in Azure SQL
4. [Graph Models](./sample/04-graph): _Work In Progress_
5. [GeoSpatial Support](./sample/05-spatial): _Work In Progress_
6. [Key-Value Store](./sample/06-key-value): How to implement a Key-Value store with In-Memory tables.


