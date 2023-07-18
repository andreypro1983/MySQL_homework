-- Вывести всех пользователей, которые не отправляли сообщения.
SELECT
    id,
    firstname,
    lastname
from
    users
WHERE
    id NOT IN (
        SELECT
            distinct from_user_id
        FROM
            messages
    );