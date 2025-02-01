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
('c7a7a89e-cc40-40b0-90dd-60f0dadedc41', 'A3', 'Flex 2761', -47077.50),

--AR
('A4', 'A2', 'Accounts Receivable', '13788410.16'),
('bdd4df93-54ac-420c-8a9b-897a24f79c9c', 'A4', 'Accounts Receivable', 13788410.16)

--OCA
('A5', 'A2', 'Other Current Assets', 24983.97),
('15560eaa-78c3-4ef6-bcc2-4697c9f509ef', 'A5', 'Payments to Deposit', 10000.00),
('1d09f6de-b8e5-4865-94e4-5a1f15e0ce04', 'A5', 'Prepaid Expenses', 14983.97),

--FA
('A6', 'A1', 'Fixed Assets', 18737.63),
('A7', 'A6', 'Property, Plant, and Equipment', 18737.63),
('47c124b7-efcb-4225-95b8-7b85e2dcb977', 'A7', 'Office Equipment', 14855.91),
('3073b7ee-8d38-48e8-b2cc-a422ffb2d20f', 'A7', 'Furniture', 1017.08),
('6450bea2-bafc-40a5-9faa-0a069669f758', 'A7', 'Computers and Accessories', 2864.64),

--CL
('L2', 'L1', 'Current Liabilities', 1014525.75),
('L3', 'L2', 'Accounts Payable', 83086.72),
('09342b42-bfa9-459c-997b-f7dac52d32a6', 'L3', 'Accrued Rent', 69723.08),
('1cf73166-6064-4e55-875a-ede915e5f0cb', 'L3', 'Payable to Character', 9313.64),
('51818eb7-9561-4f26-8285-b391b90b3c21', 'L3', 'Accounts Payable', 4050.00),
  --there's an additional layer here that isn't present in other accounts
('L4', 'L2', 'Credit Cards', 854440.93),
('L5', 'L4', '2004 Credit Card', 854440.93),
('420851e1-e6f4-4f2f-9a15-3634fa24bce0', 'L5', 'Flex Bronze Card', 5817.50),
('1a6c59d8-ae89-4704-b6ec-721da2e6b7c0', 'L5', 'Flex Silver Card', 797087.28),
('6112362b-0dac-4172-a3da-5c89e4487768', 'L5', 'Flex Gold Card', 76536.15),
('fc38e9a5-f2f5-45b0-8466-ecfc36d28561', 'L5', 'Flex Platinum Card', -25000.00),

--LTL
('L6', 'L1', 'Long-Term Liabilities', 10491.24),
--this account is randomly unhashed, weird, but ok
('220', 'L6', 'Settle Loans Payable', 10491.24),


-- Equity Breakdown
('E2', 'E1', 'Owners Equity', -95000.00),
('831b6852-6f82-4ce1-b07b-88601d16457d', 'E2', 'Owner's Equity', -95000.00),
('b1ba5fb3-5d54-4806-ad8d-e78bd2187e13', 'E1', 'Retained Earnings', 11881707.50),
--This isnt a GAAP account, but ok
('49862dbf-e470-479e-98ae-c1e172bd86a3', 'E1', 'Balance Adjustments', 122453.09),
('E3', 'E1', 'Net Income', 489940.96);
