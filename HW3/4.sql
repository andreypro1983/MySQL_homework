-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
SELECT
    COUNT(*) as quantity
FROM
    staff
WHERE
    post = 'Рабочий'
    AND age BETWEEN 24
    AND 49;