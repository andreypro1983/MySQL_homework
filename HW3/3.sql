-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT
    post,
    SUM(salary) as summ
FROM
    staff
GROUP BY
    post;