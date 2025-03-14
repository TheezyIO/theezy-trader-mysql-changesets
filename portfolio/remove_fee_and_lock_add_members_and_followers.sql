ALTER TABLE portfolio 
    DROP COLUMN fee_rate,
    DROP COLUMN lock_period,
    ADD COLUMN members INT NOT NULL AFTER minimum_deposit,
    ADD COLUMN followers INT NOT NULL AFTER members;