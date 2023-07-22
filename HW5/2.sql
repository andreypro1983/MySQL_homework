-- Найдите кол-во, отправленных сообщений каждым пользователем и выведите ранжированный список пользователей,
--  указав имя и фамилию пользователя, количество отправленных сообщений и место в рейтинге
--   (первое место у пользователя с максимальным количеством сообщений) . (используйте DENSE_RANK)
WITH user_message AS (
    SELECT
        from_user_id,
        count(from_user_id) as qty
    FROM
        messages
    GROUP by
        from_user_id
)
SELECT
    u.firstname,
    u.lastname,
    um.qty,
    DENSE_RANK() OVER (
        order by
            um.qty DESC
    ) AS 'DENSE_RANK'
FROM
    users u
    JOIN user_message um on um.from_user_id = u.id;