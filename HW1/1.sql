--  Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными

CREATE TABLE mobile_phones(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name varchar(100) NOT NULL,
    manufacturer varchar(100) DEFAULT NULL,
    product_count int DEFAULT NULL,
    price int NOT NULL
);

INSERT INTO
    mobile_phones (
        product_name,
        manufacturer,
        product_count,
        price
    )
VALUES
    ("Iphone X", "Apple", 3, 76000),
    ("Iphone 8", "Apple", 2, 51000),
    ("Galaxy S9", "Samsung", 2, 56000),
    ("Galaxy S8", "Samsung", 1, 41000),
    ("P20 Pro", "Huawei", 5, 36000);