/*
=====================================================================================
Create Database and Schemas
=====================================================================================
Script Purpose:

This script creates a new database name DataWarehouse" after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver'
and 'gold'.

WARNING:
Running this script will drop the entire 'DataWarehouse' database if it exists/
All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.

*/

USE master;
GO

-- Drop  & recreate 'DataWarehouse' database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    -- First, set database to SINGLE_USER mode to kill existing connections
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 

    -- Then drop the database
    DROP DATABASE DataWarehouse;
    
END ;
GO

-- Create database WareHouse & Schemas
CREATE DATABASE DataWarehouse ;
GO

USE DataWarehouse ;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
