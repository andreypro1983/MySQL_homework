-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток.
--  С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу
--   "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
DROP FUNCTION IF EXISTS hello;

DELIMITER / / CREATE FUNCTION hello() RETURNS VARCHAR(45) READS SQL DATA BEGIN DECLARE this time;

DECLARE result VARCHAR(45);

SET
    this = HOUR(CURRENT_TIME());

SET
    result = (
        SELECT
            CASE
                WHEN this BETWEEN 6
                and 12 THEN 'Доброе утро'
                WHEN this BETWEEN 12
                and 18 THEN 'Добрый день'
                WHEN this BETWEEN 18
                and 24 THEN 'Добрый вечер'
                ELSE 'Доброй ночи'
            END
    );

RETURN result;

END / / DELIMITER;

SELECT
    hello();