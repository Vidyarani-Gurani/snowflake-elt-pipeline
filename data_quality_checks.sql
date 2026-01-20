-- Check for nulls
SELECT COUNT(*) AS null_amounts
FROM finance_dw.analytics.curated_transactions
WHERE amount IS NULL;

-- Check for duplicate transactions
SELECT transaction_id, COUNT(*)
FROM finance_dw.analytics.curated_transactions
GROUP BY transaction_id
HAVING COUNT(*) > 1;
