-- Создайте представление, в которое попадет информация о пользователях (имя, фамилия, город и пол), 
-- которые не старше 20 лет.
CREATE VIEW user_younger_20 AS
SELECT
    u.firstname,
    u.lastname,
    p.gender,
    p.hometown
FROM
    users u
    JOIN profiles p on p.user_id = u.id
WHERE
    DATE_ADD(p.birthday, INTERVAL 20 YEAR) > NOW();