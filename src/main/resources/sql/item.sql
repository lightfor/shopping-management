CREATE TABLE item
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(128),
    price FLOAT,
    warranty VARCHAR(128),
    service_price FLOAT,
    finish_date DATETIME
);