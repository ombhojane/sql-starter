-- OVERSIGHT progressive-disclosure demo (HIGH / STOP)
-- Intentional breaking DDL so the sticky comment renders as STOP MERGE.
ALTER TABLE customer_orders DROP COLUMN customer_id;
ALTER TABLE customer_orders DROP COLUMN legacy_payment_method;

-- bot trigger 20260809T061517Z

-- bot re-trigger 20260809T062216Z (openai + progressive disclosure)
