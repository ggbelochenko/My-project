create table if not exists users
(
    id    serial
        primary key,
    name  text,
    email text,
    city  text
);

create table if not exists products
(
    id    serial
        primary key,
    name  text,
    price numeric
);

create table if not exists orders
(
    id         serial
        primary key,
    user_id    integer
        references users,
    order_date date
);

create table if not exists order_items
(
    id         serial
        primary key,
    order_id   integer
        references orders,
    product_id integer
        references products,
    quantity   integer
);

