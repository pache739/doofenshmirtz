CREATE TABLE customer (
    customer_id INTEGER primary key autoincrement,
    customer_adress integer not null,
    customer_phone integer not null,
    customer_name text not null,
    customer_password integer not null
);
create table seller (
    seller_id integer primary key autoincrement,
    seller_name text not null,
    seller_adress integer not null,
    seller_password integer not null
);
create table drugs (
    drugs_id integer primary key autoincrement,
    drugs_name text not null,
    drugs_price integer not null,
    drugs_brand text
);
create table discount (
    discount_id INTEGER primary key autoincrement,
    discount_name text,
    discount_date date not null,
    expire_date date not null,
    drugs_id integer,
    drugs_name text,
    foreign key (drugs_id) REFERENCES drugs(drugs_id),
    foreign key (drugs_name) REFERENCES drugs(drugs_name)
);



