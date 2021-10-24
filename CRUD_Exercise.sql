/*
 * Exercício com a finalidade de praticar os comandos CRUD.
 * Ele simula o CRUD em um guarda roupa
 */

CREATE DATABASE shirts_db;

USE shirts_db;

CREATE TABLE shirts(
	shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	article VARCHAR(100),
	color VARCHAR(100),
	shirt_size VARCHAR(100),
	last_worn INT
	);

-- Adicione os dados à tabela criada
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES 	('t-shirt', 'white', 'S', 10),
		('t-shirt', 'green', 'S', 200),
		('polo shirt', 'black', 'M', 10),
		('tank top', 'blue', 'S', 50),
		('t-shirt', 'pink', 'S', 0),
		('polo shirt', 'red', 'M', 5),
		('tank top', 'white', 'S', 200),
		('tank top', 'blue', 'M', 15);

-- Adicione manualmente um novo item
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES	('polo shirt', 'purple', 'M', 50);

-- Selecione apenas as colunas article e color
SELECT article, color FROM shirts;

-- Selecione todas as colunas, menos a shirt_id, com roupas tamanho M
SELECT 	article, 
		color, 
		shirt_size, 
		last_worn 
FROM shirts 
WHERE shirt_size = 'M';

-- Atualize as roupas polo shirt, alterando seu tamanho para L
UPDATE shirts SET shirt_size = 'L'
WHERE article = 'polo shirt';

-- Atualize o campo last_worn para 0 onde estiver 15
UPDATE shirts SET last_worn = 0
WHERE last_worn = 15;

-- Atualize os campos color e shirt_size para XS e off white, respectivamente,  onde a cor for white
UPDATE shirts SET shirt_size = 'XS', color = 'off white'
WHERE color = 'white';

-- Delete as llinhas onde last_worn for 200
DELETE FROM shirts 
WHERE last_worn = 200;

-- Delete as linhas onde article for tank top
DELETE FROM shirts
WHERE article = 'tank top';

-- Delete todas as linhas da tabela shirts
DELETE FROM shirts;

-- Delete a tabela shirts da base
DROP TABLE shirts;