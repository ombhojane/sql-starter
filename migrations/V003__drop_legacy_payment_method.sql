-- HIGH RISK: DROP COLUMN — OVERSIGHT should STOP this
-- Targets DataHub entity: customer_orders (Tier1 / sla:gold)
ALTER TABLE customer_orders DROP COLUMN legacy_payment_method;
