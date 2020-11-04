SELECT * FROM car_store.car;

INSERT INTO car_store.car(vin,manufacturer,model,year,color) VALUES ("3K096I98581DHSNUP","volkswagen","tiguan",2019,"blue"),
("ZM8G7BEUQZ97IH46V","peugeot","rifter",2019,"red"),("RKXVNNIHLVVZOUB4M","ford","fusion","2018","white"),
("HKNDGS7CU31E9Z7JW","toyota","RAV4",2018,"silver"),("DAM41UDN3CHU2WVF6","volvo","V60",2019,"gray"),
("DAM41UDN3CHU2WVF6","volvo","C60Crossountry",2019,"gray");



SELECT * FROM car_store.customer;

INSERT INTO car_store.customer(customer_iden,name,phone,email,address,city,state/province,country,zip/postal) 
VALUES(10001,"Pablo Picasso",0034636176382,	"-" ," Paseo de la Choper,14","Madrid","Madrid","Spain","28045"),
(20001,"Abraham Lincoln",00013059077086,"-", "120 SW 8th St","Miami","Florida","United States","33130" ) ,
(30001,"Napoléon Bonaparte","0033179754000,"-" ,"40 Rue du Colisée","Paris","Île-de-France","France","75008");



SELECT * FROM car_store.salesperson;

INSERT INTO car_store.salesperson(salesperson_id,staff_id,name,store) VALUES 
(0,00001,"Petey Cruiser","Madrid"), (1,00002,"Anna Sthesia","Barcelona"),
(2,00003,"Paul Molive","Berlin"),(3,00004,"Gail Forcewind","Paris"),
(4,00005,"Paige Turner","Miami"),(5,00006,"Bob Frapples","Mexico"),
(6,00007,"Walter Melon","Amsterdam"),(7,00008,"Shonda Leer","São Paulo");



SELECT * FROM car_store.invoice;

INSERT INTO car_store.invoice(invoice_id,invoice_number,date,car_car_id,customer_customer_id,salesperson_staff_id)
VALUES("0","852399038","22-08-2018","0","1","3"),
("1","731166526","31-12-2018","3","0","5"),
("2","271135104","22-01-2019","2","2","7");