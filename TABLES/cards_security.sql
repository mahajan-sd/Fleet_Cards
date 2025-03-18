CREATE TABLE card_security (
    card_id BIGINT PRIMARY KEY,  -- Links to cards table
    card_number VARCHAR(16) UNIQUE NOT NULL,  -- Store securely (masked in UI)
    cvv VARCHAR(4) NOT NULL,  -- Store securely (hashed/encrypted)
    pin_set BOOLEAN NOT NULL DEFAULT FALSE,  -- Tracks if PIN is set
    FOREIGN KEY (card_id) REFERENCES cards(card_id) ON DELETE CASCADE
);
