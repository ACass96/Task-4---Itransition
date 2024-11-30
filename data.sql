CREATE DATABASE user_management2;
USE user_management;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    last_login DATETIME DEFAULT NULL,users
    status ENUM('active', 'blocked') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
USE user_management;
INSERT INTO users (name, email, password) 
VALUES ('John Doe', 'john.doe@example.com', 'hashed_password');
INSERT INTO users (name, email, password) 
VALUES ('Charly Finns', 'chalie.finns@example.com', 'base_ball');
INSERT INTO users (name, email, password) 
VALUES ('Mary Poet', 'mary.poet@example.com', 'rosemary29');
INSERT INTO users (name, email, password) 
VALUES ('Karina Miller', 'karina.miller@example.com', 'music.rock36');

UPDATE users 
SET last_login = NOW() 
WHERE email = 'john.doe@example.com' AND status = 'active';