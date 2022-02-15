SQL Assignment
Salespeople
+------+---------+-----------+------+
| SNUM | SNAME   | CITY      | COMM |
+------+---------+-----------+------+
| 1001 | Peel    | London    |   12 |
| 1002 | Serres  | SanJose   |   13 |
| 1003 | AxelRod | New York  |   10 |
| 1004 | Motika  | London    |   11 |
| 1007 | RifKin  | Barcelona |   15 |
| 1008 | Fran    | London    |   25 |
+------+---------+-----------+------+
Customers
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2001 | Hoffman   | London  |    100 | 1001 |
| 2002 | Giovanni  | Rome    |    200 | 1003 |
| 2003 | Liu       | SanJose |    200 | 1002 |
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2006 | Clemens   | Londan  |    100 | 1001 |
| 2007 | Pereira   | Rome    |    100 | 1004 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+
orders
+------+---------+------------+------+------+
| ONUM | ANT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-03-10 | 2008 | 1007 |
| 3002 |  1900.1 | 1990-03-10 | 2007 | 1004 |
| 3003 |  767.19 | 1990-03-10 | 2001 | 1001 |
| 3005 | 5160.45 | 1990-03-10 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-03-10 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-04-10 | 2002 | 1003 |
+------+---------+------------+------+------+




Solve  Queries
1) List all the columns of the Salespeople table.
mysql> select * from salespeople;
+------+---------+-----------+------+
| SNUM | SNAME   | CITY      | COMM |
+------+---------+-----------+------+
| 1001 | Peel    | London    |   12 |
| 1002 | Serres  | SanJose   |   13 |
| 1003 | AxelRod | New York  |   10 |
| 1004 | Motika  | London    |   11 |
| 1007 | RifKin  | Barcelona |   15 |
| 1008 | Fran    | London    |   25 |
+------+---------+-----------+------+
2) List all customers with a rating of 100.
mysql> select * from customers WHERE RATING = 100;
+------+---------+--------+--------+------+
| CNUM | CNAME   | CITY   | RATING | SNUM |
+------+---------+--------+--------+------+
| 2001 | Hoffman | London |    100 | 1001 |
| 2006 | Clemens | Londan |    100 | 1001 |
| 2007 | Pereira | Rome   |    100 | 1004 |
+------+---------+--------+--------+------+
3) Find the largest order taken by each salesperson on each date.
mysql> SELECT o.ONUM,MAX(AMT) ,ODATE,c.CNUM FROM orders o, customers c WHERE o.CNUM=c.CNUM GROUP BY ODATE,c.SNUM,o.ODATE;
+------+----------+------------+------+
| ONUM | MAX(AMT) | ODATE      | CNUM |
+------+----------+------------+------+
| 3003 |   767.19 | 1990-10-03 | 2001 |
| 3009 |  1713.23 | 1990-10-04 | 2002 |
| 3005 |  5160.45 | 1990-10-03 | 2003 |
| 3007 |    75.75 | 1990-10-04 | 2004 |
| 3010 |  1309.95 | 1990-10-06 | 2004 |
| 3008 |     4723 | 1990-10-05 | 2006 |
| 3011 |  9891.88 | 1990-10-06 | 2006 |
| 3002 |   1900.1 | 1990-10-03 | 2007 |
| 3001 |  1098.16 | 1990-10-03 | 2008 |
+------+----------+------------+------+
4) Arrange the Order table by descending customer number.
mysql> select * from orders Order by CNUM DESC;
+------+---------+------------+------+------+
| ONUM | ANT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-03-10 | 2008 | 1007 |
| 3006 | 1098.16 | 1990-03-10 | 2008 | 1007 |
| 3002 |  1900.1 | 1990-03-10 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-03-10 | 2003 | 1002 |
| 3009 | 1713.23 | 1990-04-10 | 2002 | 1003 |
| 3003 |  767.19 | 1990-03-10 | 2001 | 1001 |
+------+---------+------------+------+------+
5) Find which salespeople currently have orders in the order table.
mysql> select SNAME from salespeople,orders  where orders.SNUM=salespeople.SNUM;
+---------+
| SNAME   |
+---------+
| Peel    |
| Serres  |
| AxelRod |
| Motika  |
| RifKin  |
| RifKin  |
+---------+
6) List names of all customers matched with the salespeople serving them.
mysql> select SNAME  from salespeople,customers  where Customers.SNUM=salespeople.SNUM;
+---------+
| SNAME   |
+---------+
| Peel    |
| AxelRod |
| Serres  |
| Serres  |
| Peel    |
| Motika  |
| RifKin  |
+---------+
7) Find the names and numbers of all salespeople who have more than one customer.




8) Count the orders of each of the salespeople and output the results in descending order.



9) List the customer table if and only if one or more of the customers in the Customer table are located in SanJose.
mysql> SELECT  * FROM customers WHERE city='SanJose';
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2003 | Liu       | SanJose |    200 | 1002 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+
10) Match salespeople to customers according to what city they live in.
mysql> SELECT SNAME,s.CITY,CNAME,c.CITY FROM salespeople s,customers c WHERE s.SNUM=c.SNUM ;
+---------+-----------+-----------+---------+
| SNAME   | CITY      | CNAME     | CITY    |
+---------+-----------+-----------+---------+
| Peel    | London    | Hoffman   | London  |
| AxelRod | New York  | Giovanni  | Rome    |
| Serres  | SanJose   | Liu       | SanJose |
| Serres  | SanJose   | Grass     | Berlin  |
| Peel    | London    | Clemens   | Londan  |
| Motika  | London    | Pereira   | Rome    |
| RifKin  | Barcelona | Cisnerors | SanJose |
+---------+-----------+-----------+---------+




11) Find all the customers in SanJose who have a rating above 200.
mysql> SELECT  * FROM customers where city = 'SanJose' AND RATING >200;
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+



12) List the names and commissions of all salespeople in London.
mysql> SELECT sname,comm FROM salespeople where city='london';
+--------+------+
| sname  | comm |
+--------+------+
| Peel   |   12 |
| Motika |   11 |
| Fran   |   25 |
+--------+------+
13) List all the orders of Salesperson Motika from the orders table.
mysql> SELECT orders.onum FROM orders,salespeople where orders.snum IN ( select snum from salespeople where  sname='motika')GROUP BY orders.snum ;
+------+
| onum |
+------+
| 3002 |
+------+
14) Find all customers who booked orders on October 3.
mysql> SELECT * FROM customers LEFT JOIN orders on   orders.odate='1990-10-03' and orders.cnum=customers.cnum;
+------+-----------+---------+--------+------+------+---------+------------+------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM | ONUM | ANT     | ODATE      | CNUM | SNUM |
+------+-----------+---------+--------+------+------+---------+------------+------+------+
| 2001 | Hoffman   | London  |    100 | 1001 | 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 2002 | Giovanni  | Rome    |    200 | 1003 | NULL |    NULL | NULL       | NULL | NULL |
| 2003 | Liu       | SanJose |    200 | 1002 | 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 2004 | Grass     | Berlin  |    300 | 1002 | NULL |    NULL | NULL       | NULL | NULL |
| 2006 | Clemens   | Londan  |    100 | 1001 | NULL |    NULL | NULL       | NULL | NULL |
| 2007 | Pereira   | Rome    |    100 | 1004 | 3002 |  1900.1 | 1990-10-03 | 2007 | 1004 |
| 2008 | Cisnerors | SanJose |    300 | 1007 | 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 2008 | Cisnerors | SanJose |    300 | 1007 | 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
+------+-----------+---------+--------+------+------+---------+------------+------+------+

15) Give the sums of the amounts from the Orders table, grouped by date, eliminating all those dates where the SUM was not at least 2000 above
the maximum Amount.
mysql> SELECT SUM(AMT)FROM orders WHERE amt>2000;
+-----------------+
| SUM(AMT)        |
+-----------------+
| 5160.4501953125 |
+-----------------+
16) Select all orders that had amounts that were greater than at least one of the orders from October 6.
mysql> SELECT * FROM orders WHERE amt>(SELECT MIN(amt)FROM orders WHERE ODATE = '1990-10-06');
+------+---------+------------+------+------+
| ONUM | AMT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3002 |  1900.1 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3008 |    4723 | 1990-10-05 | 2006 | 1001 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+


17) Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.
SELECT * FROM salespeople WHERE EXISTS  (SELECT snum FROM customers WHERE  salespeople.snum=customers.snum and rating = 300);
+------+--------+-----------+------+
| SNUM | SNAME  | CITY      | COMM |
+------+--------+-----------+------+
| 1002 | Serres | SanJose   |   13 |
| 1007 | RifKin | Barcelona |   15 |
+------+--------+-----------+------+


18) Find all customers whose cnum is 1000 above the> snum of Serres.
mysql> SELECT * FROM customers where cnum>1000 and cnum>snum;
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2001 | Hoffman   | London  |    100 | 1001 |
| 2002 | Giovanni  | Rome    |    200 | 1003 |
| 2003 | Liu       | SanJose |    200 | 1002 |
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2006 | Clemens   | Londan  |    100 | 1001 |
| 2007 | Pereira   | Rome    |    100 | 1004 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+
19) Give the salespeople’s commissions as percentages instead of decimal numbers
> SELECT snum,sname,city,comm/100 FROM Salespeople;
+------+---------+-----------+----------+
| snum | sname   | city      | comm/100 |
+------+---------+-----------+----------+
| 1001 | Peel    | London    |   0.1200 |
| 1002 | Serres  | SanJose   |   0.1300 |
| 1003 | AxelRod | New York  |   0.1000 |
| 1004 | Motika  | London    |   0.1100 |
| 1007 | RifKin  | Barcelona |   0.1500 |
| 1008 | Fran    | London    |   0.2500 |
+------+---------+-----------+----------+


20) Find the largest order taken by each salesperson on each date, eliminating those Maximum orders, which are less than 3000.




21) List all the largest orders for October 3, for each salesperson.
mysql> SELECT ONUM,MAX(AMT) ,ODATE ,SNUM FORM orders WHERE ODATE='1990-10-03' GROUP BY SNUM ;
22) Find all customers located in cities where Serres has customers.


23) Select all customers with a rating above 200.
> SELECT * FROM customers WHERE RATING>200;
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+]


24) Count the number of salespeople currently having orders in the orders table.
> SELECT COUNT(DISTINCT SNUM) FROM orders;
+----------------------+
| COUNT(DISTINCT SNUM) |
+----------------------+
|                    5 |
+----------------------+
25) Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name,
salesperson’s name and the salesperson’s rate of commission.
> SELECT customers.CNAME ,salespeople.SNAME,salespeople.COMM 
FROM customers INNER JOIN salespeople ON customers.SNUM=salespeople.SNUM 
WHERE salespeople.COMM>12;
+-----------+--------+------+
| CNAME     | SNAME  | COMM |
+-----------+--------+------+
| Liu       | Serres |   13 |
| Grass     | Serres |   13 |
| Cisnerors | RifKin |   15 |
+-----------+--------+------+

26) Find salespeople who have multiple customers.


27) Find salespeople with customers located in their own cities.

> SELECT * FROM salespeople 
INNER JOIN customers ON customers.SNUM =salespeople.SNUM 
where customers.CITY =salespeople.CITY;
+------+--------+---------+------+------+---------+---------+--------+------+
| SNUM | SNAME  | CITY    | COMM | CNUM | CNAME   | CITY    | RATING | SNUM |
+------+--------+---------+------+------+---------+---------+--------+------+
| 1001 | Peel   | London  |   12 | 2001 | Hoffman | London  |    100 | 1001 |
| 1002 | Serres | SanJose |   13 | 2003 | Liu     | SanJose |    200 | 1002 |
+------+--------+---------+------+------+---------+---------+--------+------+

28) Find all salespeople whose name starts with ‘P’ and fourth character is ‘I’.
mysql> SELECT * FROM salespeople WHERE SNAME LIKE "P    I%";



29) Write a query that uses a subquery to obtain all orders for the customer named ‘Cisneros’. Assume you do not know his customer number.


30) Find the largest orders for Serres and Rifkin.
mysql> SELECT SNAME , MAX(AMT) FROM salespeople s,orders o 
WHERE s.SNUM=o.SNUM AND SNAME IN ("serres","Rifkin");
+--------+----------+
| SNAME  | MAX(AMT) |
+--------+----------+
| Serres |  5160.45 |
+--------+----------+
31) Sort the salespeople table in the following order: snum, sname, commission, city.
 SELECT SNUM,SNAME,COMM,CITY FROM salespeople;
+------+---------+------+-----------+
| SNUM | SNAME   | COMM | CITY      |
+------+---------+------+-----------+
| 1001 | Peel    |   12 | London    |
| 1002 | Serres  |   13 | SanJose   |
| 1003 | AxelRod |   10 | New York  |
| 1004 | Motika  |   11 | London    |
| 1007 | RifKin  |   15 | Barcelona |
| 1008 | Fran    |   25 | London    |
+------+---------+------+-----------+

32) Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ''
33) Select all the possible combinations of customers you can assign.
34) Select all orders that are greater than the average for October 4.
mysql> SELECT AMT FROM orders WHERE AMT>(SELECT AVG(AMT) FROM orders WHERE ODATE = "1990-10-04");
+---------+
| AMT     |
+---------+
|  1900.1 |
| 5160.45 |
| 1098.16 |
|    4723 |
| 1713.23 |
| 1309.95 |
| 9891.88 |
+---------+

35) Write a select command using correlated subquery that selects the names and numbers of all customers with ratings equal to the maximum
for their city.

36) Write a query that totals the orders for each day and places the results in descending order.
mysql> SELECT ODATE,COUNT(ODATE) FROM orders GROUP BY ODATE ORDER BY COUNT(ONUM) DESC;
+------------+--------------+
| ODATE      | COUNT(ODATE) |
+------------+--------------+
| 1990-10-03 |            5 |
| 1990-10-04 |            2 |
| 1990-10-06 |            2 |
| 1990-10-05 |            1 |
+------------+--------------+

37) Write a select command that produces the rating followed by the name of each customer in SanJose.
mysql> SELECT CNAME,RATING 
FROM customers WHERE CITY ="SANJOSE";
+-----------+--------+
| CNAME     | RATING |
+-----------+--------+
| Liu       |    200 |
| Cisnerors |    300 |
+-----------+--------+


38) Find all orders with amounts smaller than any amount for a customer in SanJose.
 SELECT * FROM orders WHERE AMT <ANY 
 (SELECT AMT FROM orders o INNER JOIN customers c ON o.CNUM = c.CNUM WHERE CITY ="SanJose");
+------+---------+------------+------+------+
| ONUM | AMT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3002 |  1900.1 | 1990-10-03 | 2007 | 1004 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 |    4723 | 1990-10-05 | 2006 | 1001 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
+------+---------+------------+------+------+

39) Find all orders with above average amounts for their customers.
mysql> SELECT * FROM orders WHERE amt>(SELECT AVG(AMT) FROM orders o 
LEFT JOIN customers c ON o.CNUM=c.CNUM);
+------+---------+------------+------+------+
| ONUM | AMT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3008 |    4723 | 1990-10-05 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
40) Write a query that selects the highest rating in each city
 SELECT MAX(RATING) ,CITY FROM customers GROUP BY CITY;
+-------------+---------+
| MAX(RATING) | CITY    |
+-------------+---------+
|         100 | London  |
|         200 | Rome    |
|         300 | SanJose |
|         300 | Berlin  |
|         100 | Londan  |
+-------------+---------+
41) Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.00.

42) Count the customers with ratings above SanJose’s average.
mysql> SELECT * FROM customers WHERE RATING>(SELECT AVG(RATING) FROM customers WHERE CITY="sanJose");
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+
43) Find all salespeople that are located in either Barcelona or London.
 SELECT * FROM salespeople WHERE  CITY IN ("Barcelona","London");
+------+--------+-----------+------+
| SNUM | SNAME  | CITY      | COMM |
+------+--------+-----------+------+
| 1001 | Peel   | London    |   12 |
| 1004 | Motika | London    |   11 |
| 1007 | RifKin | Barcelona |   15 |
| 1008 | Fran   | London    |   25 |
+------+--------+-----------+------+
44) Find all salespeople with only one customer.
mysql> SELECT s.SNAME ,s.SNUM FROM salespeople s,(SELECT SNUM ,COUNT(*) as cust_count FROM customers GROUP BY SNUM HAVING CUST_count=1)c WHERE s.snum=c.snum;
+---------+------+
| SNAME   | SNUM |
+---------+------+
| AxelRod | 1003 |
| Motika  | 1004 |
| RifKin  | 1007 |
+---------+------+

45) Write a query that joins the Customer table to itself to find all pairs or customers served by a single salesperson.

46) Write a query that will give you all orders for more than $1000.00.
mysql> SELECT * FROM orders WHERE AMT>1000;
+------+---------+------------+------+------+
| ONUM | AMT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3002 |  1900.1 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3008 |    4723 | 1990-10-05 | 2006 | 1001 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+

47) Write a query that lists each order number followed by the name of the customer who made that order.
mysql> SELECT ONUM ,CNAME FROM orders o INNER JOIN customers c ON c.CNUM=o.CNUM;
+------+-----------+
| ONUM | CNAME     |
+------+-----------+
| 3003 | Hoffman   |
| 3009 | Giovanni  |
| 3005 | Liu       |
| 3007 | Grass     |
| 3010 | Grass     |
| 3008 | Clemens   |
| 3011 | Clemens   |
| 3002 | Pereira   |
| 3001 | Cisnerors |
| 3006 | Cisnerors |
+------+-----------+

48) Write a query that selects all the customers whose ratings are equal to or greater than ANY(in the SQL sense) of ‘Serres’.

49) Write two queries that will produce all orders taken on October 3 or October 4.
ysql> SELECT * FROM orders WHERE ODATE IN ("1990-10-03","1990-10-04");
+------+---------+------------+------+------+
| ONUM | AMT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3002 |  1900.1 | 1990-10-03 | 2007 | 1004 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |

50) Find only those customers whose ratings are higher than every customer in Rome.
mysql> SELECT * FROM customers WHERE RATING >
(SELECT MAX(RATING) FROM customers WHERE CITY="ROME");
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+
51) Write a query on the Customers table whose output will exclude all customers with a rating<= 100.00, unless they are located in Rome.
mysql> SELECT * FROM customers WHERE RATING >=100 OR CITY LIKE "ROME";
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2001 | Hoffman   | London  |    100 | 1001 |
| 2002 | Giovanni  | Rome    |    200 | 1003 |
| 2003 | Liu       | SanJose |    200 | 1002 |
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2006 | Clemens   | Londan  |    100 | 1001 |
| 2007 | Pereira   | Rome    |    100 | 1004 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+
52) Find all rows from the customer’s table for which the salesperson number is 1001.
mysql> SELECT * FROM customers WHERE SNUM="1001";
+------+---------+--------+--------+------+
| CNUM | CNAME   | CITY   | RATING | SNUM |
+------+---------+--------+--------+------+
| 2001 | Hoffman | London |    100 | 1001 |
| 2006 | Clemens | Londan |    100 | 1001 |
+------+---------+--------+--------+------+
53) Find the total amount in orders for each salesperson where their total of amounts are greater than the amount of the largest order in the table.


54) Write a query that selects all orders save those with zeroes or NULL in the amount file.
mysql> SELECT * FROM orders WHERE AMT IS NULL OR AMT =0;
Empty set (0.00 sec)

55) Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically, and the latter has a
rating of less than 200.

56) Find all salespeople name and commission.

mysql> SELECT SNAME ,COMM FROM salespeople;
+---------+------+
| SNAME   | COMM |
+---------+------+
| Peel    |   12 |
| Serres  |   13 |
| AxelRod |   10 |
| Motika  |   11 |
| RifKin  |   15 |
| Fran    |   25 |
+---------+------+

57) Write a query that produces the names and cities of all customers with the same rating as Hoffman. Write the query using Hoffman’s cnum
rather than his rating, so that it would still be usable if his rating is changed.
mysql> SELECT * FROM customers WHERE RATING =(SELECT RATING AS NUM FROM customers WHERE CNAME ="Hoffman");
+------+---------+--------+--------+------+
| CNUM | CNAME   | CITY   | RATING | SNUM |
+------+---------+--------+--------+------+
| 2001 | Hoffman | London |    100 | 1001 |
| 2006 | Clemens | Londan |    100 | 1001 |
| 2007 | Pereira | Rome   |    100 | 1004 |
+------+---------+--------+--------+------+


58) Find all salespeople for whom there are customers that follow them in alphabetical order.
59) Write a query that produces the names and ratings of all customers who have average orders.
mysql> SELECT CNAME,RATING  FROM customers 
INNER JOIN orders ON customers.cnum=orders.cnum WHERE AMT>(SELECT AVG(AMT) FROM orders )GROUP BY CNAME;
+---------+--------+
| CNAME   | RATING |
+---------+--------+
| Liu     |    200 |
| Clemens |    100 |
+---------+--------+
60) Find the SUM of all Amounts from the orders table.
mysql> SELECT SUM(AMT) FROM orders;
+--------------------+
| SUM(AMT)           |
+--------------------+
| 26658.400022506714 |
+--------------------+
61) Write a SELECT command that produces the order number, amount, and the date from rows in the order table.
mysql> SELECT ONUM,AMT,ODATE FROM orders;
+------+---------+------------+
| ONUM | AMT     | ODATE      |
+------+---------+------------+
| 3001 |   18.69 | 1990-10-03 |
| 3002 |  1900.1 | 1990-10-03 |
| 3003 |  767.19 | 1990-10-03 |
| 3005 | 5160.45 | 1990-10-03 |
| 3006 | 1098.16 | 1990-10-03 |
| 3007 |   75.75 | 1990-10-04 |
| 3008 |    4723 | 1990-10-05 |
| 3009 | 1713.23 | 1990-10-04 |
| 3010 | 1309.95 | 1990-10-06 |
| 3011 | 9891.88 | 1990-10-06 |
+------+---------+------------+


62) Count the number of non NULL rating fields in the Customers table (including repeats).
mysql> SELECT COUNT(DISTINCT RATING) FROM customers WHERE RATING IS NOT NULL;
+------------------------+
| COUNT(DISTINCT RATING) |
+------------------------+
|                      3 |
+------------------------+
63) Write a query that gives the names of both the salesperson and the customer for each order after the order number.
mysql> SELECT ONUM,CNAME,SNAME FROM orders JOIN salespeople ON salespeople.SNUM=orders.SNUM JOIN customers ON customers.CNUM=orders.CNUM;
+------+-----------+---------+
| ONUM | CNAME     | SNAME   |
+------+-----------+---------+
| 3003 | Hoffman   | Peel    |
| 3009 | Giovanni  | AxelRod |
| 3005 | Liu       | Serres  |
| 3007 | Grass     | Serres  |
| 3010 | Grass     | Serres  |
| 3008 | Clemens   | Peel    |
| 3011 | Clemens   | Peel    |
| 3002 | Pereira   | Motika  |
| 3001 | Cisnerors | RifKin  |
| 3006 | Cisnerors | RifKin  |
+------+-----------+---------+
64) List the commissions of all salespeople servicing customers in London.
mysql> SELECT s.SNUM,SNAME FROM salespeople s INNER JOIN customers c ON s.SNUM=c.SNUM WHERE c.CITY="London";
+------+-------+
| SNUM | SNAME |
+------+-------+
| 1001 | Peel  |
+------+-------+
65) Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.
mysql> SELECT s.SNUM,SNAME FROM salespeople s INNER JOIN customers c ON s.SNUM=c.SNUM WHERE c.CITY IS NULL;
Empty set (0.00 sec)
66) Write a query using the EXISTS operator that selects all salespeople with customers located in their cities who are not assigned to them.
67) Write a query that selects all customers serviced by Peel or Motika. (Hint: The snum field relates the 2 tables to one another.)
mysql> SELECT * FROM customers c INNER JOIN salespeople s ON c.SNUM= s.SNUM WHERE SNAME IN("motika","peel");
+------+---------+--------+--------+------+------+--------+--------+------+
| CNUM | CNAME   | CITY   | RATING | SNUM | SNUM | SNAME  | CITY   | COMM |
+------+---------+--------+--------+------+------+--------+--------+------+
| 2001 | Hoffman | London |    100 | 1001 | 1001 | Peel   | London |   12 |
| 2006 | Clemens | Londan |    100 | 1001 | 1001 | Peel   | London |   12 |
| 2007 | Pereira | Rome   |    100 | 1004 | 1004 | Motika | London |   11 |
+------+---------+--------+--------+------+------+--------+--------+------+


68) Count the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should
be counted only once.)
mysql> SELECT COUNT(SNUM) FROM salepeopele (SELECT SNUM FROM customers WHERE ODATE IN GROUP BY ODATE;

69) Find all orders attributed to salespeople who live in London.

mysql> SELECT o.ONUM,AMT,o.ODATE,o.SNUM,s.SNAME FROM orders o JOIN salespeople s ON o.SNUM=s.SNUM WHERE s.CITY="london";
+------+---------+------------+------+--------+
| ONUM | AMT     | ODATE      | SNUM | SNAME  |
+------+---------+------------+------+--------+
| 3003 |  767.19 | 1990-10-03 | 1001 | Peel   |
| 3008 |    4723 | 1990-10-05 | 1001 | Peel   |
| 3011 | 9891.88 | 1990-10-06 | 1001 | Peel   |
| 3002 |  1900.1 | 1990-10-03 | 1004 | Motika |
+------+---------+------------+------+--------+





70) Find all orders by customers not located in the same cities as their salespeople.

mysql> SELECT ONUM,s.SNUM,s.SCITY As salespeople s,c.CITY AS c.CITY FROM orders o 
JOIN salespeolpe s ON s.SNUM=o.SNUM JOIN customers c ON o.CNUM =c.CNUM 
WHERE s.CITY <> c.CITY;
71) Find all salespeople who have customers with more than one current order.
mysql> SELECT s.SNUM,s.SNAME,s.CITY FROM salespeople s INNER JOIN customers c ON s.SNUM=c.SNUM INNER JOIN orders o ON o.CNUM=c.CNUM where 1<=o.CNUM;
+------+---------+-----------+
| SNUM | SNAME   | CITY      |
+------+---------+-----------+
| 1001 | Peel    | London    |
| 1003 | AxelRod | New York  |
| 1002 | Serres  | SanJose   |
| 1002 | Serres  | SanJose   |
| 1002 | Serres  | SanJose   |
| 1001 | Peel    | London    |
| 1001 | Peel    | London    |
| 1004 | Motika  | London    |
| 1007 | RifKin  | Barcelona |
| 1007 | RifKin  | Barcelona |
+------+---------+-----------+

72) Write a query that extracts from the customer’s table every customer assigned to a salesperson, who is currently having at least one another
customer(besides the customer being selected) with orders in the Orders Table.
M=c.SNUM INNER JOIN orders o ON o.CNUM=c.CNUM  GROUP BY o.CNUM HAVING 1<=o.CNUM;
+------+-----------+---------+
| SNUM | CNAME     | CITY    |
+------+-----------+---------+
| 1001 | Hoffman   | London  |
| 1003 | Giovanni  | Rome    |
| 1002 | Liu       | SanJose |
| 1002 | Grass     | Berlin  |
| 1001 | Clemens   | Londan  |
| 1004 | Pereira   | Rome    |
| 1007 | Cisnerors | SanJose |
+------+-----------+---------+

73) Write a query on the customer’s table that will find the highest rating in each city. Put the output in this form: for the city (city), the highest
rating is (rating).
mysql> SELECT CITY ,MAX(RATING) FROM customers GROUP BY CITY;
+---------+-------------+
| CITY    | MAX(RATING) |
+---------+-------------+
| London  |         100 |
| Rome    |         200 |
| SanJose |         300 |
| Berlin  |         300 |
| Londan  |         100 |
74) Write a query that will produce the snum values of all salespeople with orders, having amt greater than 1000 in the Orders Table(without
repeats).
mysql> SELECT DISTINCT ONUM ,s.SNUM,AMT FROM salespeople s JOIN orders o ON s.SNUM=o.SNUM WHERE AMT>1000;
+------+------+---------+
| ONUM | SNUM | AMT     |
+------+------+---------+
| 3002 | 1004 |  1900.1 |
| 3005 | 1002 | 5160.45 |
| 3006 | 1007 | 1098.16 |
| 3008 | 1001 |    4723 |
| 3009 | 1003 | 1713.23 |
| 3010 | 1002 | 1309.95 |
| 3011 | 1001 | 9891.88 |
+------+------+---------+
75) Write a query that lists customers in a descending order of rating. Output the rating field first, followed by the customer’s names and numbers.
mysql> SELECT CNAME,CNUM,RATING FROM customers ORDER BY RATING DESC;
+-----------+------+--------+
| CNAME     | CNUM | RATING |
+-----------+------+--------+
| Grass     | 2004 |    300 |
| Cisnerors | 2008 |    300 |
| Giovanni  | 2002 |    200 |
| Liu       | 2003 |    200 |
| Hoffman   | 2001 |    100 |
| Clemens   | 2006 |    100 |
| Pereira   | 2007 |    100 |

76) Find the average commission for salespeople in London.
mysql> SELECT AVG(COMM) FROM salespeople WHERE CITY="london";
+-----------+
| AVG(COMM) |
+-----------+
|   16.0000 |
+-----------+

77) Find all orders credited to the same salesperson who services Hoffman.(cnum 2001).
mysql> SELECT * FROM orders WHERE SNUM=
(SELECT SNUM FROM orders WHERE CNUM=2001);
+------+---------+------------+------+------+
| ONUM | AMT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3008 |    4723 | 1990-10-05 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+

78) Find all salespeople whose commission is in between 0.10 and 0.12(both inclusive).
mysql> SELECT SNUM,SNAME,CITY,COMM/100 
FROM salespeople WHERE COMM BETWEEN 10 AND 12;
+------+---------+----------+----------+
| SNUM | SNAME   | CITY     | COMM/100 |
+------+---------+----------+----------+
| 1001 | Peel    | London   |   0.1200 |
| 1003 | AxelRod | New York |   0.1000 |
| 1004 | Motika  | London   |   0.1100 |
+------+---------+----------+----------+

79) Write a query that will give you the names and cities of all salespeople in London with a commission above 0.10.
mysql> SELECT SNAME,CITY ,COMM FROM salespeople WHERE CITY="london" AND COMM>10;
+--------+--------+------+
| SNAME  | CITY   | COMM |
+--------+--------+------+
| Peel   | London |   12 |
| Motika | London |   11 |
| Fran   | London |   25 |
+--------+--------+------+
80) Write a query that selects each customer’s smallest order.
mysql> SELECT C.CNUM, CNAME,MIN(AMT) FROM customers c INNER JOIN orders o ON c.CNUM=o.CNUM GROUP BY CNUM;
+------+-----------+----------+
| CNUM | CNAME     | MIN(AMT) |
+------+-----------+----------+
| 2001 | Hoffman   |   767.19 |
| 2002 | Giovanni  |  1713.23 |
| 2003 | Liu       |  5160.45 |
| 2004 | Grass     |    75.75 |
| 2006 | Clemens   |     4723 |
| 2007 | Pereira   |   1900.1 |
| 2008 | Cisnerors |    18.69 |
+------+-----------+----------+
81) Write a query that selects the first customer in alphabetical order whose name begins with ‘G’.
mysql> SELECT * FROM customers WHERE CNAME LIKE "G%" LIMIT 1;
+------+----------+------+--------+------+
| CNUM | CNAME    | CITY | RATING | SNUM |
+------+----------+------+--------+------+
| 2002 | Giovanni | Rome |    200 | 1003 |
+------+----------+------+--------+------+
82) Write a query that counts the number of different non NULL city values in the customers table.
mysql> SELECT COUNT(CITY) FROM customers WHERE CITY IS NOT NULL;
+-------------+
| COUNT(CITY) |
+-------------+
|           7 |
+-------------+

83) Find the average amount from the Orders Table.
mysql> SELECT AVG(AMT) FROM orders;
+-------------------+
| AVG(AMT)          |
+-------------------+
| 2665.840002250671 |
+-------------------+
84) Find all customers who are not located in SanJose and whose rating is above 200.
mysql> SELECT * FROM customers 
WHERE CITY!="SanJose" AND RATING>200;
+------+-------+--------+--------+------+
| CNUM | CNAME | CITY   | RATING | SNUM |
+------+-------+--------+--------+------+
| 2004 | Grass | Berlin |    300 | 1002 |
+------+-------+--------+--------+------+
85) Give a simpler way to write this query.SELECT snum, sname, city, comm FROM salespeople WHERE (comm > + 0.12 OR comm < 0.14);
mysql> SELECT * FROM salespeople
WHERE COMM BETWEEN 12 AND 14;
+------+--------+---------+------+
| SNUM | SNAME  | CITY    | COMM |
+------+--------+---------+------+
| 1001 | Peel   | London  |   12 |
| 1002 | Serres | SanJose |   13 |
+------+--------+---------+------+

86) Which salespersons attend to customers not in the city they have been assigned to?
mysql> SELECT s.SNUM,s.SNAME,s.CITY,c.CITY AS customers 
FROM salespeople s JOIN customers c ON s.SNUM=c.SNUM WHERE s.CITY <> c.CITY;
+------+---------+-----------+-----------+
| SNUM | SNAME   | CITY      | customers |
+------+---------+-----------+-----------+
| 1003 | AxelRod | New York  | Rome      |
| 1002 | Serres  | SanJose   | Berlin    |
| 1001 | Peel    | London    | Londan    |
| 1004 | Motika  | London    | Rome      |
| 1007 | RifKin  | Barcelona | SanJose   |
+------+---------+-----------+-----------+

87) Which salespeople get commission greater than 0.11 are serving customers rated less than 250?
mysql> SELECT S.SNUM,SNAME,s.CITY FROM salespeople s 
JOIN customers C ON s.SNUM=c.SNUM where COMM>11 and RATING <250;
+------+--------+---------+
| SNUM | SNAME  | CITY    |
+------+--------+---------+
| 1001 | Peel   | London  |
| 1002 | Serres | SanJose |
| 1001 | Peel   | London  |
+------+--------+---------+
88) Which salespeople have been assigned to the same city but get different commission percentages?
mysql> SELECT * FROM salespeople WHERE CITY ="london" COMM <>
(SELECT COMM FROM salespeople);
mysql> SELECT * FROM salespeople WHERE CITY ="london";
+------+--------+--------+------+
| SNUM | SNAME  | CITY   | COMM |
+------+--------+--------+------+
| 1001 | Peel   | London |   12 |
| 1004 | Motika | London |   11 |
| 1008 | Fran   | London |   25 |
+------+--------+--------+------+


89) Which salesperson has earned the maximum commission?
mysql> SELECT SNUM,SNAME,CITY,MAX(COMM) FROM salespeople ;
+------+-------+--------+-----------+
| SNUM | SNAME | CITY   | MAX(COMM) |
+------+-------+--------+-----------+
| 1001 | Peel  | London |        25 |
+------+-------+--------+-----------+
90) Does the customer who has placed the maximum number of orders have the maximum rating?
mysql> SELECT c.CNUM,CNAME,CITY,COUNT(o.CNUM),MAX(RATING) FROM customers c JOIN orders o ON o.CNUM= c.CNUM ;
+------+---------+--------+---------------+-------------+
| CNUM | CNAME   | CITY   | COUNT(o.CNUM) | MAX(RATING) |
+------+---------+--------+---------------+-------------+
| 2001 | Hoffman | London |            10 |         300 |
+------+---------+--------+---------------+-------------+

91) List all customers in descending order of customer rating.
mysql> SELECT * FROM customerS ORDER BY RATING  DESC;
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
| 2002 | Giovanni  | Rome    |    200 | 1003 |
| 2003 | Liu       | SanJose |    200 | 1002 |
| 2001 | Hoffman   | London  |    100 | 1001 |
| 2006 | Clemens   | Londan  |    100 | 1001 |
| 2007 | Pereira   | Rome    |    100 | 1004 |
92) On which days has Hoffman placed orders?
mysql> SELECT c.CNAME ,o.CNUM,o.ODATE FROM customers c,orders o 
WHERE c.CNUM=o.CNUM AND c.CNAME="Hoffman";
+---------+------+------------+
| CNAME   | CNUM | ODATE      |
+---------+------+------------+
| Hoffman | 2001 | 1990-10-03 |
+---------+------+------------+

93) Which salesmen have no orders between 10/03/1990 and 10/05/1990?

94) How many salespersons have succeeded in getting orders?
mysql> SELECT s.SNAME ,s.SNUM,o.ODATE FROM salespeople s ,orders o 
WHERE s.SNUM=o.SNUM ;
+---------+------+------------+
| SNAME   | SNUM | ODATE      |
+---------+------+------------+
| RifKin  | 1007 | 1990-10-03 |
| Motika  | 1004 | 1990-10-03 |
| Peel    | 1001 | 1990-10-03 |
| Serres  | 1002 | 1990-10-03 |
| RifKin  | 1007 | 1990-10-03 |
| Serres  | 1002 | 1990-10-04 |
| Peel    | 1001 | 1990-10-05 |
| AxelRod | 1003 | 1990-10-04 |
| Serres  | 1002 | 1990-10-06 |
| Peel    | 1001 | 1990-10-06 |
+---------+------+------------+

95) How many customers have placed orders?
mysql> SELECT c.CNAME ,o.CNUM,o.ODATE,ONUM FROM customers c,orders o WHERE c.CNUM=o.CNUM  ;
+-----------+------+------------+------+
| CNAME     | CNUM | ODATE      | ONUM |
+-----------+------+------------+------+
| Hoffman   | 2001 | 1990-10-03 | 3003 |
| Giovanni  | 2002 | 1990-10-04 | 3009 |
| Liu       | 2003 | 1990-10-03 | 3005 |
| Grass     | 2004 | 1990-10-04 | 3007 |
| Grass     | 2004 | 1990-10-06 | 3010 |
| Clemens   | 2006 | 1990-10-05 | 3008 |
| Clemens   | 2006 | 1990-10-06 | 3011 |
| Pereira   | 2007 | 1990-10-03 | 3002 |
| Cisnerors | 2008 | 1990-10-03 | 3001 |
| Cisnerors | 2008 | 1990-10-03 | 3006 |
+-----------+------+------------+------+

96) On which date has each salesman booked an order of maximum value?
mysql> SELECT s.SNUM,O.ODATE,o.ODATE,MAX(o.AMT) FROM customers c,salespeople s,orders o WHERE c.SNUM=s.SNUM AND c.CNUM=o.CNUM GROUP BY s.SNAME;
+------+------------+------------+------------+
| SNUM | ODATE      | ODATE      | MAX(o.AMT) |
+------+------------+------------+------------+
| 1001 | 1990-10-03 | 1990-10-03 |    9891.88 |
| 1003 | 1990-10-04 | 1990-10-04 |    1713.23 |
| 1002 | 1990-10-03 | 1990-10-03 |    5160.45 |
| 1004 | 1990-10-03 | 1990-10-03 |     1900.1 |
| 1007 | 1990-10-03 | 1990-10-03 |    1098.16 |
+------+------------+------------+------------+

97) Who is the most successful salesperson?


98) Which customers have the same rating?

mysql> SELECT * FROM customers ORDER BY RATING;
+------+-----------+---------+--------+------+
| CNUM | CNAME     | CITY    | RATING | SNUM |
+------+-----------+---------+--------+------+
| 2001 | Hoffman   | London  |    100 | 1001 |
| 2006 | Clemens   | Londan  |    100 | 1001 |
| 2007 | Pereira   | Rome    |    100 | 1004 |
| 2002 | Giovanni  | Rome    |    200 | 1003 |
| 2003 | Liu       | SanJose |    200 | 1002 |
| 2004 | Grass     | Berlin  |    300 | 1002 |
| 2008 | Cisnerors | SanJose |    300 | 1007 |
+------+-----------+---------+--------+------+
99) Find all orders greater than the average for October 4th.
mysql> SELECT ONUM,ODATE,AVG(AMT) FROM orders WHERE ODATE <>"1996-10-04" GROUP BY ODATE;
+------+------------+--------------------+
| ONUM | ODATE      | AVG(AMT)           |
+------+------------+--------------------+
| 3001 | 1990-10-03 | 1788.9180416107179 |
| 3007 | 1990-10-04 |   894.489990234375 |
| 3008 | 1990-10-05 |               4723 |
| 3010 | 1990-10-06 | 5600.9149169921875 |
+------+------------+--------------------+

100) List all customers with ratings above Grass’s average.
mysql> SELECT CNUM,CNAME  ,RATING  FROM customers WHERE RATING >(SELECT AVG(RATING)FROM customers WHERE CITY="sanjose");
+------+-----------+--------+
| CNUM | CNAME     | RATING |
+------+-----------+--------+
| 2004 | Grass     |    300 |
| 2008 | Cisnerors |    300 |
+------+-----------+--------+
101) Which customers have above average orders?
mysql> SELECT * FROM orders WHERE AMT>(SELECT AVG(AMT) FROM orders);
+------+---------+------------+------+------+
| ONUM | AMT     | ODATE      | CNUM | SNUM |
+------+---------+------------+------+------+
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3008 |    4723 | 1990-10-05 | 2006 | 1001 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+

102) Select the total amount in orders for each salesperson for which the total is greater than the amount of the largest order in the table.

103) Give names and numbers of all salespersons that have more than one customer?
mysql> SELECT SNAME ,SNUM FROM salespeople WHERE SNUM IN(SELECT SNUM FROM customers GROUP BY SNUM HAVING COUNT(SNUM)>1);
+--------+------+
| SNAME  | SNUM |
+--------+------+
| Peel   | 1001 |
| Serres | 1002 |
+--------+------+
104) Select all salespeople by name and number who have customers in their city whom they
don’t service.
mysql> SELECT s.SNAME ,s.CITY,c.CNAME,c.CITY  FROM salespeople s,customers c WHERE s.SNUM =c.SNUM AND s.CITY <> c.CITY;
+---------+-----------+-----------+---------+
| SNAME   | CITY      | CNAME     | CITY    |
+---------+-----------+-----------+---------+
| AxelRod | New York  | Giovanni  | Rome    |
| Serres  | SanJose   | Grass     | Berlin  |
| Peel    | London    | Clemens   | Londan  |
| Motika  | London    | Pereira   | Rome    |
| RifKin  | Barcelona | Cisnerors | SanJose |

105) Does the total amount in orders by customer in Rome and London, exceed the commission paid to salesperson in London, and New York by
more than 5 times?
106) Which are the date, order number, amt and city for each salesperson (by name) for the maximum order he has obtained?

107) Which salesperson is having lowest commission? 
mysql> SELECT SNUM,SNAME,CITY,MIN(COMM) FROM salespeople;
+------+-------+--------+-----------+
| SNUM | SNAME | CITY   | MIN(COMM) |
+------+-------+--------+-----------+
| 1001 | Peel  | London |        10 |
+------+-------+--------+-----------+