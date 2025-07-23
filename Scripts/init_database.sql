-- Switch to the 'master' database to perform database-level operations
USE master;
GO

-- Check if the 'DataWarehouse' database exists, and if it does, drop it safely
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    -- Set the database to SINGLE_USER mode to avoid any conflicts
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    
    -- Drop the existing database
    DROP DATABASE DataWarehouse;
END;
GO

-- Create a new 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

-- Switch to the newly created 'DataWarehouse' database
USE DataWarehouse;
GO

-- Create a schema named 'bronze' for raw/ingested data
CREATE SCHEMA bronze;
GO

-- Create a schema named 'silver' for cleansed/structured data
CREATE SCHEMA silver;
GO

-- Create a schema named 'gold' for curated/aggregated data
CREATE SCHEMA gold;
GO
