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
- install this repository [build_sql_case_database ](https://github.com/farah2003/build_sql_case_database )  
- open build.sql file in MySQL workbench

## let's practice


#### Easy
##### 1- Get user id ,email and first name for users with last name doe.

![1](https://user-images.githubusercontent.com/59260120/224287253-8d48ae10-087b-462a-8c81-dd1381638a9b.png)

##### 2- Get first name , last name and role for all user 

![2](https://user-images.githubusercontent.com/59260120/224287309-1e2dad43-744d-483f-aa28-357e27945810.png)

##### 3- Get first name , last name and email for users with role admin
![3](https://user-images.githubusercontent.com/59260120/224187365-a5dc9c87-55b9-49ef-9f5b-b0cad28d3b55.png)

##### 5- Get title an target money for campaign with description null and status open
![5](https://user-images.githubusercontent.com/59260120/224190343-6a34064d-4e8e-459b-9eb5-d415fcf3376a.png)

##### 6- Get title and target money for all campaigns with target money in range greater than 10000  and less than 20000
![6](https://user-images.githubusercontent.com/59260120/224190007-48678995-bca7-4390-b6a7-e8257970fd96.png)

##### 7- Get the  third and fourth user that don't to all 
![7](https://user-images.githubusercontent.com/59260120/224187975-7660a332-04cd-4a34-b42f-12cac66008c0.png)
need change

#### 8-get first_name and amount of money for all user whose donate or not 
![8](https://user-images.githubusercontent.com/59260120/224188126-e822fbed-3bfc-4461-b02a-9b9c0c6fd965.png)
##### 9- get first_name , last_name  if  user has compand add status donor if not add ststus normal user
![9](https://user-images.githubusercontent.com/59260120/224188482-bffb64e8-c9f8-4b40-96b2-919f8ad0621c.png)
###### 10- Get capmagin name and cateegory for all campaigns with catergory Food or Health
![10](https://user-images.githubusercontent.com/59260120/224188616-e5021e32-d6f4-4f6a-8989-87fa4403eafe.png)

##### 11-Get capmagin name and cateegory for all campaigns with catergory Food or Education or Human Rights (using in)
![11](https://user-images.githubusercontent.com/59260120/224188775-bc788e23-49a0-4cb2-b3e4-0232675befa4.png)
##### 12 -Get  fisrt name , last name , email and time user login to system for all users before the "2023-01-01"
![12](https://user-images.githubusercontent.com/59260120/224189007-814b6614-11c2-46ae-bc78-9196ac9d9a80.png)
##### 13- Get all the first , last name for user with amount of donation for each campagin
![13](https://user-images.githubusercontent.com/59260120/224189304-9c25ea95-02fc-4024-817a-3f1e92b98489.png)

##### 14- Get all the first , last name for user with amount of donation for each campagin and catergories for campagin
![14](https://user-images.githubusercontent.com/59260120/224189360-1af5f04b-4a52-4ade-8fb0-c97c8f3cd709.png)

##### 20-Get the total amount of money and the total number of donors and total number of capmaign
![15](https://user-images.githubusercontent.com/59260120/224189501-26d13632-aadf-49fd-a8e0-daeceb142c09.png)
#### Intermediate



##
 Hard
