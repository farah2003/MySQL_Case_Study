# MySQL_Case_Study
This case study is about a simple donation system that will help you to practice working with the database as a real project
here is a brief about database tables and the relations between tablesز

here is  a database schema 

![sql](https://user-images.githubusercontent.com/59260120/224130543-f373f3a3-a710-4e40-9709-e2f336b53f68.png)


The users table has information about the user in the system 
and users_roles table to determine the roles of users if the user is an admin or users are donors who donate or it using a normal user on the website without a donation.

The users table contains a field about user information (first_name, last_name, email, address, phone) and a (created_by, updated_by) field about who created or updated this user for example for the system itself or admin with privileges to a created system in user and (created_at, updated_at) the time that user information inserts in a database or updated in the database.

The campaigns table contains the filed information (title, description)  and target_money for this campaign every campaign has its status for example ("close", "open") and the category of this campaign for example ( "Education", "Health", "Food")
the donations table contains the donors who donate and the amount of money and which campaign he donated 

The capon contains is contain the families and the amount of money the family takes form which campaigns 
the families table contains the infrmation about the families 

## let start
install this repository https://github.com/farah2003/build_sql_case_database 
open build.sql file in MySQL workbench
