-- =======================================
-- Table 1: Product Information
-- =======================================
IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
GO

CREATE TABLE bronze.crm_prd_info (
    prd_id INT,                         -- Product ID (Primary Key)
    prd_key NVARCHAR(50),                           -- Product key or code
    prd_nm NVARCHAR(50),                            -- Product name
    prd_cost INT,                                   -- Product cost
    prd_line NVARCHAR(50),                          -- Product line/category
    prd_start_dt DATETIME,                          -- Product availability start date
    prd_end_dt DATETIME                             -- Product end/discontinuation date
);
GO

-- =======================================
-- Table 2: Sales Details
-- =======================================
IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
GO

CREATE TABLE bronze.crm_sales_details (
    sls_ord_num NVARCHAR(50),                       -- Sales order number
    sls_prd_key NVARCHAR(50),                       -- Product key
    sls_cust_id INT,                                -- Customer ID
    sls_order_dt INT,                               -- Order date (consider changing to DATE)
    sls_ship_dt INT,                                -- Shipping date
    sls_due_dt INT,                                 -- Due date
    sls_sales INT,                                  -- Sales amount
    sls_quantity INT,                               -- Quantity sold
    sls_price INT                                   -- Price per unit
);
GO

-- =======================================
-- Table 3: Location Info
-- =======================================
IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
GO

CREATE TABLE bronze.erp_loc_a101 (
    cid NVARCHAR(50),                               -- Customer or location ID
    cntry NVARCHAR(50)                              -- Country
);
GO

-- =======================================
-- Table 4: Customer Info
-- =======================================
IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
GO

CREATE TABLE bronze.erp_cust_az12 (
    cid NVARCHAR(50),                               -- Customer ID
    bdate DATE,                                     -- Birthdate
    gen NVARCHAR(50)                                -- Gender
);
GO

-- =======================================
-- Table 5: Product Category Info
-- =======================================
IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
GO

CREATE TABLE bronze.erp_px_cat_g1v2 (
    id NVARCHAR(50),                                -- Category ID
    cat NVARCHAR(50),                               -- Category name
    subcat NVARCHAR(50),                            -- Subcategory
    maintenance NVARCHAR(50)                        -- Maintenance type
);
GO

-- =======================================
-- Table 6: CRM Customer Info
-- =======================================
IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO

CREATE TABLE bronze.crm_cust_info (
    cst_id INT,                         -- Customer ID (Primary Key)
    cst_key NVARCHAR(50),                           -- Customer key
    cst_firstname NVARCHAR(50),                     -- First name
    cst_lastname NVARCHAR(50),                      -- Last name
    cst_material_status NVARCHAR(50),               -- Marital status
    cst_gndr NVARCHAR(50),                          -- Gender
    cst_create_date DATE                            -- Record creation date
);
GO
