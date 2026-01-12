
DROP TABLE transactions;

CREATE TABLE transactions (
    id VARCHAR(255) PRIMARY KEY,
    transaction_date DATE,
    transaction_type VARCHAR(255),
    posted_date DATE,
    description VARCHAR(255),
    amount DOUBLE PRECISION
);

SELECT * FROM transactions;

INSERT INTO transactions (id, transaction_date, transaction_type, posted_date, description, amount) VALUES
('txn_001', '2024-01-01', 'credit', '2024-01-01', 'Initial Deposit', 500.00),
('txn_002', '2024-01-02', 'debit', '2024-01-03', 'Coffee Shop', 4),
('txn_003', '2024-01-05', 'debit', '2024-01-06', 'Online Bookstore', 20.99);