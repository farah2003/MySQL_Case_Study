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
##### 1- Get user id ,email and first name of users with last name doe.

![1](https://user-images.githubusercontent.com/59260120/224287253-8d48ae10-087b-462a-8c81-dd1381638a9b.png)

##### 2- Get first name , last name and role of all users.

![2](https://user-images.githubusercontent.com/59260120/224287309-1e2dad43-744d-483f-aa28-357e27945810.png)

##### 3- Get first name , last name and email of users with role admin
![3](https://user-images.githubusercontent.com/59260120/224187365-a5dc9c87-55b9-49ef-9f5b-b0cad28d3b55.png)

##### 4- Get fist name ,last name and phone of families with last name start with  m  or end with  ez or contain il
![44](https://user-images.githubusercontent.com/59260120/224308972-54e96b79-4f79-4965-9d50-a68d34d6fe0b.png)

##### 5- Get title an target money of campaign with description null and status open
![5](https://user-images.githubusercontent.com/59260120/224190343-6a34064d-4e8e-459b-9eb5-d415fcf3376a.png)

##### 6- Get title and target money of all campaigns with target money in range greater than 10000  and less than 20000
![6](https://user-images.githubusercontent.com/59260120/224190007-48678995-bca7-4390-b6a7-e8257970fd96.png)
##### 7- Get capmagin name and cateegory of all campaigns with catergory Food or Health
![10](https://user-images.githubusercontent.com/59260120/224188616-e5021e32-d6f4-4f6a-8989-87fa4403eafe.png)
##### 8-Get capmagin name and cateegory for all campaigns with catergory Food or Education or Human Rights using (in)
![11](https://user-images.githubusercontent.com/59260120/224188775-bc788e23-49a0-4cb2-b3e4-0232675befa4.png)
##### 9 -Get the first name, last name, email, and time login system  of all users created  before"2023-01-01"
![12](https://user-images.githubusercontent.com/59260120/224189007-814b6614-11c2-46ae-bc78-9196ac9d9a80.png)
##### 10- Get first and last name of all donors along with donation amount for each campaign
![13](https://user-images.githubusercontent.com/59260120/224189304-9c25ea95-02fc-4024-817a-3f1e92b98489.png)
##### 11- Get first and last name of all donors along with donation amount for each campaign and catergories for campagin
![14](https://user-images.githubusercontent.com/59260120/224189360-1af5f04b-4a52-4ade-8fb0-c97c8f3cd709.png)
##### 12- Get first_name , email and last name  of user with amount donation  greater than or equal 100.00
![16 donation greater than or reauql 100 and name of this donors ](https://user-images.githubusercontent.com/59260120/224358330-e2713ad3-6ad7-4e09-8b1e-866f78f55ee2.png)
##### 13- Get all campaign donations donated by Bob Smith
![17get call campaigns that donors Bob smith ](https://user-images.githubusercontent.com/59260120/224358558-2a48f569-e1c1-44bd-8f13-f5507004eb9d.png)
##### 14-I want the 3rd and 4th highest amounts for donations with first name last name amount and email of donor donated this donations
![7](https://user-images.githubusercontent.com/59260120/224187975-7660a332-04cd-4a34-b42f-12cac66008c0.png)

#### Intermediate
##### 1-Get the total amount of money and the total number of donors and total number of capmaign
![15](https://user-images.githubusercontent.com/59260120/224189501-26d13632-aadf-49fd-a8e0-daeceb142c09.png)
##### 2- Get first name , last name and total donation(sum of donation that user donated for different campaigns) for donors with total donation greater than 200
![donors with totalt donation   200](https://user-images.githubusercontent.com/59260120/224354624-5c59b05b-a341-4a74-89a9-d784def17327.png)
##### 3-Get first_name , last name and total capons (Sum of capons that family get from different campaigns) for familiy with total capons less than 1000.00
![33333333](https://user-images.githubusercontent.com/59260120/224363722-ea8145ea-4b23-4acc-84de-c31f5b53c1a7.png)

##### 4-Get first name and last name for family did not get capons 
![44444444](https://user-images.githubusercontent.com/59260120/224363354-557e4423-4a1f-45bf-8c8a-913e02c2059c.png)

##### 5- get fist name and last name and total amount(sum of donation that user donated for different campaigns) for tow  highest donations 
![5555555](https://user-images.githubusercontent.com/59260120/224363332-bbbfe1bf-c143-41aa-8e5e-3d085253cfe4.png)

##### 6- Get fisrt name ,last name  user with donation in status donors and user without donation as status donor
![666666666666](https://user-images.githubusercontent.com/59260120/224363298-e0de78d5-9c59-4f88-8174-379add796aac.png)
##### 7- Get total number of campaigns for each catergory type
##![7777](https://user-images.githubusercontent.com/59260120/224363245-cc3f95c2-05a6-4af8-a672-d586dfc72073.png)
##### 8- Get total number of donors for each campains 
![88888](https://user-images.githubusercontent.com/59260120/224363226-f9bb56f2-1982-40fb-8403-d2ca9b9956e6.png)
##### 9 Get first name , last name for user donated more than two
![user  who donatte more that 2 time in system](https://user-images.githubusercontent.com/59260120/224366895-232aebc2-2894-4262-abae-c19a60af1d8e.png)

## Hard


## Insert ,update ,delete

##### 1- Insert "Environment" category to the campaign category table.
##### 2- Insert "coming soon" and "about to end" to campaign status table.
##### 3- Delete users with name   first name "David"
##### 4- update title to "Animal rights" in id 8;
