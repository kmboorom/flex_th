
WITH parent AS ( 
  SELECT 
    account_id, 
    name, 
    value 
  FROM financial_accounts 
  WHERE parent_id IS NULL 
), 

child AS ( 
  SELECT 
    fa.parent_id, 
    fa.value AS child_value 
  FROM financial_accounts fa 
  WHERE fa.parent_id IS NOT NULL 
), 
final as (
SELECT 
  p.account_id AS parent_id, 
  p.name AS parent_name, 
  p.value AS parent_value, 
  SUM(c.child_value) AS child_sum, 
  case when SUM(c.child_value) = p.value then true else false end AS check_sum
FROM parent p
LEFT JOIN child c 
  ON p.account_id = c.parent_id 
GROUP BY p.account_id, p.name, p.value
)
select 
  *
from final
