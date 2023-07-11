-- Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
-- Сделал через IF так как 2 сделал через CASE
CREATE TABLE orders(
    id int AUTO_INCREMENT PRIMARY KEY,
    employee_id int NOT NULL,
    amount decimal(7, 2) NOT NULL,
    order_status VARCHAR(50)
);

INSERT INTO
    orders(employee_id, amount, order_status)
VALUES
    (3, 15.00, 'OPEN'),
    (1, 25.50, 'OPEN'),
    (5, 100.70, 'CLOSED'),
    (2, 22.18, 'OPEN'),
    (4, 9.50, 'CANCELLED');

SELECT
    *,
    IF (
        order_status = 'OPEN',
        'Order is in open state',
        IF (
            order_status = 'CLOSED',
            'Order is closed',
            'Order is cancelled'
        )
    ) as full_order_status
FROM
    orders;