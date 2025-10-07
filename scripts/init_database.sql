/*
==========================================
Create Database and Schemas
==========================================

Script Purpose:
- Creates a new database named 'DataWarehouse' after checking if it already exists
- If it exists, it is dropped & recreated
- Sets up three schemas within the database, namely 'bronze', 'silver', and 'gold'

WARNING:
    If 'DataWarehouse' exists already, running this script will drop the existing database
    Ensure proper backups before running this script.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

