CREATE TABLE cards (
    card_id BIGSERIAL PRIMARY KEY,  -- Auto-incrementing ID
    account_id BIGINT NOT NULL,  -- Links to accounts table
    issuer VARCHAR(100) NOT NULL,  -- Bank issuing the card
    network VARCHAR(20) NOT NULL CHECK (network IN ('VISA', 'Mastercard', 'RuPay', 'Amex')),
    expiry_date DATE NOT NULL,  -- Proper date format
    status VARCHAR(10) NOT NULL CHECK (status IN ('ACTIVE', 'BLOCKED', 'EXPIRED')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id) ON DELETE CASCADE
);