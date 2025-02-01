--accounting rules verification

with base as  (

select * from financial_accounts    
)

select 
--will return true if A != L+SE which will fail the test
sum(
  case
    when name = ('ASSETS') then value
    else value * -1
  end as flag
) > 0 

from financial_accounts
