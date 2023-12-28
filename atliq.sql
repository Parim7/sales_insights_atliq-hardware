select * from sales.customers; 
select count(*) from sales.customers;
select distinct customer_type from sales.customers;
select count( distinct custmer_name) from sales.customers;




select * from sales.date;
select count(*) from sales.date;
select count(*) from sales.date where sales.date.year=2017;
select count(*) from sales.date where sales.date.year=2018;
select count(*) from sales.date where sales.date.year=2019;
select count(*) from sales.date where sales.date.year=2020;
select count(*) from sales.date where sales.date.year=2021;


select * from sales.markets;
select count(*) from sales.markets;
select distinct markets_name from sales.markets;
select count(distinct markets_name) from sales.markets;




select * from sales.products;
select distinct(product_type) from sales.products;




select * from sales.transactions;
#nner join
select sales.transactions.* ,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date =sales.date.date;
select sales.transactions.* ,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date =sales.date.date
where sales.date.year=2020;
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date =sales.date.date
where sales.date.year=2020 AND sales.transactions.market_code="Mark001";
select sales.transactions.* ,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date =sales.date.date
where sales.date.year=2019;
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date =sales.date.date
where sales.date.year=2019;
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date =sales.date.date
where sales.date.year=2018;
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date =sales.date.date
where sales.date.year=2017;