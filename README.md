# flex_th

I made this a stream of conciousness, I hope that's ok, at the very least you'll get what I was thinking

Starting drawing now, can view [here](https://drive.google.com/file/d/1DusMcjZVPdLlWUfS_-naJ_prlJT8BPip/view?usp=sharing)

USing https://jsonformatter.org/json-pretty-print to make this easier to read

ok it looks like we have a couple different levels to this nested array.

For ERD

Accounts  
-account_id (pk)  
-parent_id (fk)  
-name  
-value  


Assets  
-asset_id (pk)  
-asset_name  
-value  
-parent_id (fk)  

Liabililties  
-liabililty_id (pk)  
-liabililty_name  
-value  
-parent_id (fk)  

Stockholders equity  
-asset_id (pk)  
-equity_name  
-value  
-parent_id (fk)  


 ## (1) Data modelling
Draw.io [here](https://drive.google.com/file/d/1DusMcjZVPdLlWUfS_-naJ_prlJT8BPip/view?usp=sharing)  
This is my best case scenario for a set of tables. I don't think this will practically work with this example, but if I was making a balance sheet I'd want it in this sort of format

scratch that ^ lots to be desired here, but trying to make a sql solution work

## (2) For data validation purposes
At the highest level, a basic principle in Accounting is 
A = L + SE 
SE = (CS + APIC) + RE
each child balance must roll up into the parent balance  
I can see how in python this would probably be easiest to loop through each level of the array and make sure that the subsequent child equals the parent balance  
that said, I'm probably most comfortable in sql in the time limit so I'll probably flatten the array and make a CTE based query.  
Again if I had more time i'd probably try to make something fancy and recursive sql statement, but trying to make this simple.   

ok now that we have insert statements, if all of the keys are right, this should be a pretty simple query


## After Action Review

Ok there's a problem here because the sum of Accounts payable + credit cards != current liabilities. That worked
The other check works.

In hindsight trying to do this in sql was not a good idea. This would have been fairly straight forward in python. 

The data isn't tabular so I had to do a bunch of manual stuff to make it tabular. That said I hope I showed that I understand the heirarchical nature of a Balance sheet. the final query worked. I would definitely design an ETL pipeline which would make these different functioning tables so they can be analyzed more easily in a data warehouse
enviornment. My general approach the the problem was to insert the data into seperate tables, but then realized there were missing keys, so I had to generate some. My hope was to get to a point where I could do what I did in my final query and just make a simple case statement. There were also some general data qualilty issues with the differences in the account_id's. I'd definitely want to standardize those. My approach has the gaping hole that I manually edited the keys to make it work. In the future I would use python and loop through it. 

