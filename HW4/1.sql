--  Подсчитать общее количество лайков, которые получили пользователи младше 12 лет.
SELECT
    count(*) as 'Quantity_like'
FROM
    likes
WHERE
    user_id in (
        SELECT
            user_id
        FROM
            profiles
        WHERE
            DATE_ADD(birthday, INTERVAL 12 YEAR) > NOW()
    );