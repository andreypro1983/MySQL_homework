/* С помощью регулярных выражений найти:
 4.1 Товары, в которых есть упомянание "Iphone"
 4.2 Товары, в которых есть упомянание "Samsung"
 4.3 Товары, в которых есть цифры
 4.4 Товары, в которых есть цифра 8 */

4.1

SELECT
    *
FROM
    mobile_phones
WHERE
    product_name like "%Iphone%";

4.2

SELECT
    *
FROM
    mobile_phones
WHERE
    manufacturer like "%Samsung%";

4.3

SELECT
    *
FROM
    mobile_phones
WHERE
    product_name REGEXP '[[:digit:]]'

4.4

SELECT
    *
FROM
    mobile_phones
WHERE
    product_name like "%8%"
    or manufacturer like "%8%";