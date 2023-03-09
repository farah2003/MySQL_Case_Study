# MySQL_Case_Study
This case study is about a simple donation website. Will help you to practice working with the database as a real project
here is a brief about database tables and the relations between tables.

this is a database schema

![sql](https://user-images.githubusercontent.com/59260120/224130543-f373f3a3-a710-4e40-9709-e2f336b53f68.png)

#### Reatlions between tables
user has only one role and the role can be for many users (many to one between user and user_roles)
campaign has one status and the status can be for many campagins (many to one beteen campaign and campaigns_statuses)
campaign has one category  and the category can be for many campagins (many to one between campaigns and catergory)
user can donate to many campagins and campagins donated by many users (many to many campaigns and users) 
the donation donated by one user and the donation belong to one campagin 
(many to one between donations(campagin_user) and users and many to one between donations and campaigns)
Families can benfit form many campagins and campagins can target many families ( many to many between families and campagins)
the capon for one families and the capon belong to one campagin 
(many to one between capons(family_campagin) and families and many to one between capons(family_campagin)  and campaigns)

## Let's get started
install this repository [build_sql_case_database ](https://github.com/farah2003/build_sql_case_database )  
open build.sql file in MySQL workbench
