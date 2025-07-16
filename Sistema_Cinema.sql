DROP DATABASE IF EXISTS sistema_cinema;
CREATE DATABASE IF NOT EXISTS sistema_cinema;
USE sistema_cinema;

DROP TABLE IF EXISTS filme;
CREATE TABLE IF NOT EXISTS filme(
    nome VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    faixa_etaria varchar(5) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    id_filme INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS sala(
    numero INT NOT NULL,
    capacidade INT NOT NULL,
    id_sala INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS sessao(
    data_sessao DATE NOT NULL,
    hora_sessao TIME NOT NULL,
    id_sessao INT AUTO_INCREMENT PRIMARY KEY,
    id_filme int NOT NULL,
    id_sala int NOT NULL,
    animacao varchar(5),
    idioma VARCHAR(20),
    FOREIGN KEY (id_filme) REFERENCES filme(id_filme),
	FOREIGN KEY (id_sala) REFERENCES sala(id_sala)
);

CREATE TABLE IF NOT EXISTS cliente(
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    idade INT NOT NULL,
    quantidade_ingresso VARCHAR(10) NOT NULL,
    id_cliente INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS ingresso(
    assento INT NOT NULL,
    valor VARCHAR(6) NOT NULL,
    id_cliente INT,
    id_sessao INT,
    id_ingresso INT AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
	FOREIGN KEY (id_sessao) REFERENCES sessao(id_sessao)
);

INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('Uncharted', 116, '12', 'Ação');

INSERT INTO sala(numero, capacidade)
VALUES(9 , 110);

INSERT INTO sessao(data_sessao, hora_sessao, animacao, idioma, id_filme, id_sala)
VALUES('2025-07-30', '11:35:00', '3D', 'dublado', 1, 1);

INSERT INTO cliente(nome, cpf, idade, quantidade_ingresso)
VALUES('Mateus','863.450.479-81', 13,1);

INSERT INTO ingresso(assento, valor, id_sessao, id_cliente)
VALUES(15, '22,5', 1, 1);

-- Segundo Cadastro

INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('Divertidamente', 106, 'Livre', 'Ação' );

INSERT INTO sala(numero, capacidade)
VALUES(6 , 100);

INSERT INTO sessao(data_sessao, hora_sessao, animacao, idioma, id_filme, id_sala)
VALUES('2025-07-20', '19:30:00', '2D', 'dublado', 2 , 2);

INSERT INTO cliente(nome, cpf, idade, quantidade_ingresso)
VALUES('Andrew','015.639.344-08', 16,1);

INSERT INTO ingresso(assento, valor, id_sessao, id_cliente)
VALUES(33, '40', 2, 2);

-- Terceiro Cadastro -------------
INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('Infinito', 107, '14', 'Ação');

INSERT INTO sala(numero, capacidade)
VALUES(6 , 120);

INSERT INTO sessao(data_sessao, hora_sessao, animacao, idioma, id_filme, id_sala)
VALUES('2025-07-31', '12:05:00', '3D', 'dublado', 3, 3);

INSERT INTO cliente(nome, cpf, idade, quantidade_ingresso)
VALUES('Antonio','743.970.175-91', 35,2);

INSERT INTO ingresso(assento, valor, id_sessao, id_cliente)
VALUES(51, '90', 3, 3);

-- Quarto Cadastro ------------------------------------
INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('Doce Vingança', 108, '18', 'Terror');

INSERT INTO sala(numero, capacidade)
VALUES(4 , 90);

INSERT INTO sessao(data_sessao, hora_sessao, animacao, idioma, id_filme, id_sala)
VALUES('2025-07-11', '14:55:00', '3D', 'dublado', 4, 4);

INSERT INTO cliente(nome, cpf, idade, quantidade_ingresso)
VALUES('San','713.973.833-52', 27,3);

INSERT INTO ingresso(assento, valor, id_sessao, id_cliente)
VALUES(2, '135', 4, 4);

-- Quinto Cadastro -------------------
INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('As Branquelas', 109, '14', 'Comédia');

INSERT INTO sala(numero, capacidade)
VALUES(1 , 100);

INSERT INTO sessao(data_sessao, hora_sessao, animacao, idioma, id_filme, id_sala)
VALUES('2025-07-23', '17:05:00', '2D', 'dublado', 5, 5);

INSERT INTO cliente(nome, cpf, idade, quantidade_ingresso)
VALUES('Michael','692.734.682-94', 21,2);

INSERT INTO ingresso(assento, valor, id_sessao, id_cliente)
VALUES(91, '90', 5, 5);

-- Sexto Cadastro -------------------
INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('Your Name', 107, '12', 'Romance');

INSERT INTO sala(numero, capacidade)
VALUES(15 , 110);

INSERT INTO sessao(data_sessao, hora_sessao, animacao, idioma, id_filme, id_sala)
VALUES('2025-07-13', '12:19:00', '3D', 'dublado', 6, 6);

INSERT INTO cliente(nome, cpf, idade, quantidade_ingresso)
VALUES('Tom','081.732.622-26', 16,1);

INSERT INTO ingresso(assento, valor, id_sessao, id_cliente)
VALUES(3, '21', 6, 6);

-- Sétimo Cadastro -------------------
INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('Meu Malvado Favorito', 85, 'Livre', 'Aventura');

INSERT INTO sala(numero, capacidade)
VALUES(8 , 110);

INSERT INTO sessao(data_sessao, hora_sessao, animacao, idioma, id_filme, id_sala)
VALUES('2025-07-15', '22:29:00', '3D', 'dublado', 7, 7);

INSERT INTO cliente(nome, cpf, idade, quantidade_ingresso)
VALUES('Tom','376.194.876-48', 10,1);

INSERT INTO ingresso(assento, valor, id_sessao, id_cliente)
VALUES(1, '21', 7, 7);



SELECT * FROM cliente;
SELECT * FROM cliente WHERE id_cliente > 1 ;

SELECT * FROM sessao;
SELECT * FROM sessao WHERE id_filme > 6 ;

SELECT * FROM filme;
SELECT * FROM filme WHERE id_filme > 4 ;

SELECT * FROM ingresso;
SELECT * FROM ingresso WHERE id_ingresso > 3 ;

SELECT * FROM sala;
SELECT * FROM sala WHERE id_sala > 2 ;

UPDATE cliente SET idade = 17
WHERE id_cliente = 1;
SELECT * FROM cliente;
SELECT * FROM cliente WHERE id_cliente > 1 ;


UPDATE filme SET genero = 'Animação'
WHERE id_filme = 2;
SELECT * FROM filme;
SELECT * FROM filme WHERE id_filme > 2 ;

DELETE FROM cliente WHERE id_cliente = 7;