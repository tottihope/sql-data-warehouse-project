/*
===============================================================================
Data Loading : Bulk Insert
===============================================================================
Script Purpose:
    This script load bronze tables, truncate existing tables 
    if they already exist.
	  Run this script to re-populate 'bronze' Tables
===============================================================================
*/

-- loading data into crm_cust_info table
TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\totti\OneDrive\Building a Modern Data Warehouse - Data Engineering Bootcamp\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
) ;
GO
-- Check for data completness and schema
SELECT * FROM bronze.crm_cust_info -- WHERE cst_id IN (29475,29483) ;
SELECT COUNT(*) FROM bronze.crm_cust_info
GO

-- loading data into crm_prd_info table
TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\totti\OneDrive\Building a Modern Data Warehouse - Data Engineering Bootcamp\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
) ;
GO
-- check for data completness and schema
SELECT * FROM bronze.crm_prd_info;
SELECT COUNT(*) FROM bronze.crm_prd_info;

-- Loading loading data into crm_sales_details table
TRUNCATE TABLE bronze.crm_sales_details ;
BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\totti\OneDrive\Building a Modern Data Warehouse - Data Engineering Bootcamp\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
) ;
GO
SELECT * FROM bronze.crm_sales_details;
SELECT COUNT(*) FROM bronze.crm_sales_details;

-- Loading loading data into erp_cust_az12 table
TRUNCATE TABLE bronze.erp_cust_az12 ;
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\totti\OneDrive\Building a Modern Data Warehouse - Data Engineering Bootcamp\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
) ;
GO
-- check for data completness and schema
SELECT * FROM bronze.erp_cust_az12 ;
SELECT COUNT(*) FROM bronze.erp_cust_az12 ;
GO

-- Loading loading data into erp_loc_a101 table ;
TRUNCATE TABLE bronze.erp_loc_a101;
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\totti\OneDrive\Building a Modern Data Warehouse - Data Engineering Bootcamp\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
) ;
GO
-- check for data completness and schema
SELECT * FROM bronze.erp_loc_a101;
SELECT COUNT(*) FROM bronze.erp_loc_a101;
GO

-- Loading loading data into erp_px_cat_g1v2 table;
TRUNCATE TABLE bronze.erp_px_cat_g1v2 ;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\totti\OneDrive\Building a Modern Data Warehouse - Data Engineering Bootcamp\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
) ;
GO
-- check for data completness and schema
SELECT * FROM bronze.erp_px_cat_g1v2 ;
SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2 ;
GO
