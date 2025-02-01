--accounting rules verification

with base as  (

select * from financial_accounts    
)

select 
--will return true if A != L+SE which will fail the test
sum(
  case
    when account_id = ('A1') then value
    when account_id in ('L1', 'E1') then value * -1
  end as flag
) > 0 

from financial_accounts
