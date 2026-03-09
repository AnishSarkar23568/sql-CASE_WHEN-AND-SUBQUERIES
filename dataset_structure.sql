create table customers ( customer_id int primary key , name varchar(50));
 insert into customers values (1,'Rahul'),(2,'Aman'),(3,'Anita'),(4,'Riya');
 select * from   customers

 create table products ( product_id int primary key , product varchar(50),category varchar(50),cost int);
  insert into products values (10,'shors','footwear',900),(11,'jeans','clothing',1500),(12,'cap','accessories',100),(13,'jacket','clothing',1200);
  select * from   products
 
  create table orders ( order_id int primary key , customer_id int,product_id int,revenue int );
 insert into orders values (101,1,10,1500),(102,3,11,2400),(103,1,12,300);
  select * from   orders ;
 
