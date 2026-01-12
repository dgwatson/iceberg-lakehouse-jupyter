
CREATE SCHEMA poc;

DROP TABLE poc.transactions;

CREATE TABLE poc.transactions (
    id VARCHAR PRIMARY KEY,
    transaction_date DATE,
    transaction_type VARCHAR,
    posted_date DATE,
    description VARCHAR,
    amount DOUBLE PRECISION
);

SELECT * FROM poc.transactions;

INSERT INTO poc.transactions (id, transaction_date, transaction_type, posted_date, description, amount) VALUES
('txn_001', '2024-01-01', 'credit', '2024-01-01', 'Initial Deposit', 1000.00),
('txn_002', '2024-01-02', 'debit', '2024-01-03', 'Coffee Shop', 4.50),
('txn_003', '2024-01-05', 'debit', '2024-01-06', 'Online Bookstore', 25.99);
