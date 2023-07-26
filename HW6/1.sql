-- Создайте таблицу users_old, аналогичную таблице users.
-- Создайте процедуру, с помощью которой можно переместить любого (одного) пользователя из таблицы users в таблицу users_old.
-- (использование транзакции с выбором commit или rollback – обязательно).
DROP TABLE IF EXISTS users_old;

CREATE TABLE users_old LIKE users;

DROP PROCEDURE IF EXISTS move_user_to_users_old;

DELIMITER / / CREATE PROCEDURE move_user_to_users_old (id_user INT) BEGIN START TRANSACTION;

INSERT INTO
    users_old
SELECT
    *
FROM
    users
WHERE
    id = id_user;

DELETE FROM
    users
WHERE
    id = id_user;

COMMIT;

END / / DELIMITER;

CALL move_user_to_users_old(4);