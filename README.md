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


(1) Data modelling
Draw.io [here](https://drive.google.com/file/d/1DusMcjZVPdLlWUfS_-naJ_prlJT8BPip/view?usp=sharing)  
This is my best case scenario for a set of tables. I don't think this will practically work with this example, but if I was making a balance sheet I'd want it in this sort of format

scratch that ^ lots to be desired here, but trying to make a sql solution work

(2) For data validation purposes
At the highest level, a basic principle in Accounting is 
A = L + SE 
SE = (CS + APIC) + RE
each child balance must roll up into the parent balance  
I can see how in python this would probably be easiest to loop through each level of the array and make sure that the subsequent child equals the parent balance  
that said, I'm probably most comfortable in sql in the time limit so I'll probably flatten the array and make a CTE based query.  
Again if I had more time i'd probably try to make something fancy and recursive sql statement, but trying to make this simple.   

I did this locally in postgres  
idk why I did it this way, this really isn't the best way to do this  
wow I should have just taken my chances on the python script  

ok now that we have insert statements, if all of the keys are right, this should be a pretty simple query

