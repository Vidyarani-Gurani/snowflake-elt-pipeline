-- Transform staging data into curated table
CREATE OR REPLACE TABLE finance_dw.analytics.curated_transactions AS
SELECT
    transaction_id,
    customer_id,
    transaction_date,
    amount
FROM finance_dw.staging.stg_transactions
WHERE amount IS NOT NULL;
