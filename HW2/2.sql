-- Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
SELECT
    ID,
    CASE
        WHEN count_product BETWEEN 0
        AND 99 THEN 'Маленький заказ'
        WHEN count_product BETWEEN 100
        AND 300 THEN 'Средний заказ'
        ELSE 'Большой заказ'
    END AS 'тип заказа'
FROM
    sales;