--create sequence sales_id;

--create table sales (
--id int not null default nextval('sales_id') primary key,
--name_product varchar,
--provider varchar,
--address_provider varchar,
--quantity_product serial,
--price real,
--payment_type varchar,
--customer varchar,
--address_customer varchar,
--remains_product serial);

--insert into sales ( name_product, provider, address_provider, quantity_product, 
--price, payment_type, customer, address_customer, remains_product) values
--('Зубная паста', 'ООО Ромашка',	'г. Буржуев, ул Пушкина, д. 8',	'100', '25', 'Наложенный платеж', 'ООО Рога и Копыта', 'г. Деревянный, ул. Смирнова, д. 4', '100'),
--('Зубная нить', 'ООО Ромашка',	'г. Буржуев, ул Пушкина, д. 8',	'34', '300', 'Безналичный платеж', 'ООО Рога и Копыта', 'г. Деревянный, ул. Смирнова, д. 4', '34'),
--('Ручки шариковые', 'ООО Ромашка',	'г. Буржуев, ул Пушкина, д. 8',	'55', '12', 'Наличный  платеж', 'ООО Рога и Копыта', 'г. Деревянный, ул. Смирнова, д. 4', '55'),
--('Вода минеральная', 'ООО Березка',	'г. Грехов, ул. Ломоносова, д. 190', '2', '150', 'Наличный  платеж', 'ООО Рога и Копыта', 'г. Деревянный, ул. Смирнова, д. 4', '2'),
--('Вода минеральная', 'ООО Березка',	'г. Павлодар, ул. Ленина, д. 1', '350', '500', 'Безналичный платеж', 'ООО Рога и Копыта', 'г. Деревянный, ул. Смирнова, д. 4', '300');

--create sequence provider_id;

--create table provider (
--id int not null default nextval('provider_id') primary key,
--name_provider varchar,
--city varchar,
--street varchar,
--house_number varchar);

--insert into provider ( name_provider, city, street, house_number) values
--('ООО Ромашка', 'Буржуев','ул Пушкина', 'д.8'),
--('ООО Березка', 'Грехов','ул Ломоносова', 'д.190'),
--('ООО Березка', 'Павлодар','ул Ленина', 'д.1');

--delete from provider  where id between 1 and 4;
--update provider set id='1' where id=5 returning *;
--update provider set id='2' where id=6 returning *;
--update provider set id='3' where id=7 returning *;
--alter table sales drop column provider, drop column address_provider;


--alter table sales drop column provider_id;

--alter table sales add column provider_id int references provider (id);
--
--update sales set provider_id = '1' where id='1';
--update sales set provider_id = '1' where id='2';
--update sales set provider_id = '1' where id='3';
--update sales set provider_id = '2' where id='4';
--update sales set provider_id = '3' where id='5';


--create sequence customer_id;

--create table customer (
--id int not null default nextval('customer_id') primary key,
--name_customer varchar,
--city varchar,
--street varchar,
--house_number varchar);

--insert into customer ( name_customer, city, street, house_number) values
--('ООО Рога и Копыта', 'г.Деревянный','ул.Смирнова ', 'д.4');

--alter table sales drop column customer, drop column address_customer;

--alter table sales add column customer_id  int references customer (id);

--update sales set customer_id  = '1' where id='1';
--update sales set customer_id = '1' where id='2';
--update sales set customer_id  = '1' where id='3';
--update sales set customer_id  = '1' where id='4';
--update sales set customer_id  = '1' where id='5';


--create sequence pay_id;

--create table pay (
--id int not null default nextval('pay_id') primary key,
--currency text,
--"payment method" text);

--insert into pay (currency, "payment method") values
--('рубли', 'Наложенный платеж'),
--('рубли', 'Безналичный платеж'),
--('рубли', 'Наличный платеж');


--alter table sales drop column payment_type;

--alter table sales add column pay_id  int references pay (id);

--update sales set pay_id  = '1' where id='1';
--update sales set pay_id = '2' where id='2';
--update sales set pay_id  = '3' where id='3';
--update sales set pay_id  = '3' where id='4';
--update sales set pay_id  = '2' where id='5';








