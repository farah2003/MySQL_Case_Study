# MySQL_Case_Study
This case study is about a simple donation website. Will help you to practice working with the database as a real project
here is a brief about database tables and the relations between tables.

this is a database schema

![sql](https://user-images.githubusercontent.com/59260120/224130543-f373f3a3-a710-4e40-9709-e2f336b53f68.png)

#### Reatlions between tables
- Many to One between users and users_roles ( user has only one role and the role can be for many users)

- Many to One between campaign and campaigns_statuses ( campaign has one status and the status can be for many campagins)

- Many to One between campaigns and catergories ( campaign has one category and the category can be for many campagins)

- Many to Many campaigns and users ( user donate to many campagins and campagins donated by many users)

- Many to one between donations and users and many to one between donations and campaigns ( the donation donated by one user and the donation belong to one campagin)

- Many to Many between families and campagins ( family get benfit form many campagins and campagin target many families)

- Many to One between capons and families and many to one between capons and campaigns ( the capon for one families and the capon belong to one campagin )

## Let's get started
install this repository [build_sql_case_database ](https://github.com/farah2003/build_sql_case_database )  
open build.sql file in MySQL workbench
