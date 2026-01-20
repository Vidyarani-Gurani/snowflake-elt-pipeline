-- Create staging schema
CREATE OR REPLACE SCHEMA finance_dw.staging;
USE SCHEMA finance_dw.staging;

-- Staging table
CREATE OR REPLACE TABLE stg_transactions (
    transaction_id NUMBER,
    customer_id NUMBER,
    transaction_date DATE,
    amount NUMBER(10,2),
    last_updated TIMESTAMP
);
