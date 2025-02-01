--init insert statements

INSERT INTO financial_accounts (account_id, parent_id, name, value) VALUES
('A1', NULL, 'ASSETS', 13318970.87),
('L1', NULL, 'LIABILITIES', 1025016.99),
('E1', NULL, 'EQUITY', 12399101.55)

--Current Assets, making the heirarchy between the accounts
('A2', 'A1', 'Current Assets', 13300233.24),
('A3', 'A2', 'Bank Accounts', -513160.89),
('6c9790a2-0800-46cc-8c50-e29e69d8015c', 'A3', 'Flex Cash', 806291.61),
('b58e60f6-fe20-451e-9fc2-87eb58bcb297', 'A3', 'Flex Checking', -1272375.00),
('c7a7a89e-cc40-40b0-90dd-60f0dadedc41', 'A3', 'Flex 2761', -47077.50)
