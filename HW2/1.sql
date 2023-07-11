-- Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
CREATE TABLE sales(
    id int AUTO_INCREMENT PRIMARY KEY,
    order_date date NOT NULL,
    count_product int NOT NULL
);

INSERT INTO
    sales(order_date, count_product)
VALUES
    ('2022-01-01', 50),
    ('2022-01-02', 250),
    ('2022-01-02', 120),
    ('2022-01-03', 343),
    ('2022-01-05', 222);