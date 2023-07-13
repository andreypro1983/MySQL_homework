-- Найдите количество специальностей
SELECT
    count(distinct post) as quantity
FROM
    staff;