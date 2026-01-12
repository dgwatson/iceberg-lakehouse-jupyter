
DROP SCHEMA iceberg.poc;

CREATE SCHEMA iceberg.poc WITH (location = 's3://lakehouse/poc');

DROP TABLE iceberg.poc.transactions;

CREATE TABLE iceberg.poc.transactions (
	id varchar,
	transaction_date date,
	tranaction_type varchar,
	posted_date date,
	description varchar,
	amount double
) WITH (
	location = 's3://lakehouse/poc/transactions',
	format = 'PARQUET'
);

SELECT * FROM iceberg.poc.transactions;


SELECT * FROM postgres.poc.transactions;
SELECT * FROM mysql.poc.transactions;


INSERT INTO iceberg.poc.transactions (
    id,
    transaction_date,
    tranaction_type,
    posted_date,
    description,
    amount
)
SELECT
    id,
    transaction_date,
    transaction_type,
    posted_date,
    description,
    amount
FROM mysql.poc.transactions;
