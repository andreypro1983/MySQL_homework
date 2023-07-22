-- Выберите все сообщения, отсортируйте сообщения по возрастанию даты отправления (created_at)
--  и найдите разницу дат отправления между соседними сообщениями, получившегося списка.
--   (используйте LEAD или LAG)
SELECT
    body,
    created_at,
    DATEDIFF (LEAD(created_at, 1) OVER (), created_at) AS 'date_diff'
FROM
    messages
ORDER BY
    created_at;