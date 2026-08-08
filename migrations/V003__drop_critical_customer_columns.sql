-- ============================================================
-- HIGH RISK demo migration for OVERSIGHT
-- Intentionally destructive: DROP COLUMN on Tier-1 join keys /
-- payment fields consumed by downstream lineage.
-- ============================================================

-- CRITICAL: DROP COLUMN used by dim joins / revenue pipelines
ALTER TABLE customer_orders DROP COLUMN customer_id;

-- CRITICAL: DROP COLUMN on payment method (blast radius demo)
ALTER TABLE customer_orders DROP COLUMN legacy_payment_method;

-- HIGH: RENAME breaks downstream refs
ALTER TABLE customer_orders RENAME COLUMN status TO status_v2;
