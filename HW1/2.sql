-- Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT
    product_name,
    manufacturer,
    price
FROM
    mobile_phones
WHERE
    product_count > 2;