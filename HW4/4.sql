-- (по желанию)* 
-- Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех написал ему сообщений.
-- Вариант1
SET
    @uid = 1;

SELECT
    U.id,
    U.firstname,
    U.lastname
FROM
    users U
    JOIN (
        SELECT
            from_user_id,
            count(*) as message_count
        FROM
            messages
        WHERE
            to_user_id = @uid
        GROUP BY
            from_user_id
    ) M ON M.from_user_id = U.id
WHERE
    M.from_user_id IN (
        SELECT
            initiator_user_id as friend_id
        FROM
            friend_requests
        WHERE
            status = 'approved'
            AND target_user_id = @uid
        UNION
        SELECT
            target_user_id as friend_id
        FROM
            friend_requests
        WHERE
            status = 'approved'
            AND initiator_user_id = @uid
    )
GROUP BY
    U.id,
    U.firstname,
    U.lastname
ORDER BY
    M.message_count DESC
LIMIT
    1;

-- Вариант2
SET
    @uid = 1;

SELECT
    id,
    firstname,
    lastname
FROM
    users
WHERE
    id = (
        SELECT
            from_user_id
        FROM
            messages
        WHERE
            to_user_id = @uid
            AND from_user_id IN (
                SELECT
                    initiator_user_id as friend_id
                FROM
                    friend_requests
                WHERE
                    status = 'approved'
                    AND target_user_id = @uid
                UNION
                SELECT
                    target_user_id as friend_id
                FROM
                    friend_requests
                WHERE
                    status = 'approved'
                    AND initiator_user_id = @uid
            )
        GROUP BY
            from_user_id
        ORDER BY
            count(*) DESC
        LIMIT
            1
    );