-- Определить кто больше поставил лайков (всего): мужчины или женщины.
SELECT
    IF (
        (
            SELECT
                COUNT(*)
            FROM
                likes l
                JOIN profiles p on p.user_id = l.user_id
            WHERE
                p.gender = 'm'
        ) >(
            SELECT
                COUNT(*)
            FROM
                likes l
                JOIN profiles p on p.user_id = l.user_id
            WHERE
                p.gender = 'f'
        ),
        'Мужчины больше',
        'Женщины больше'
    );