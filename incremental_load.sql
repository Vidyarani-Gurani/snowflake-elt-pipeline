-- Incremental load logic
INSERT INTO finance_dw.analytics.curated_transactions
SELECT
    transaction_id,
    customer_id,
    transaction_date,
    amount
FROM finance_dw.staging.stg_transactions s
WHERE s.last_updated >
(
    SELECT COALESCE(MAX(transaction_date), '1900-01-01')
    FROM finance_dw.analytics.curated_transactions
);
