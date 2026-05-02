-- Add constraint to prevent negative amount (FIX for BUG_01)

ALTER TABLE orders
ADD CONSTRAINT chk_amount_positive CHECK (amount > 0);