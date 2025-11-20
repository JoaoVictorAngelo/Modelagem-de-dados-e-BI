-- Cria Data Base
CREATE DATABASE db_comercial;

USE db_comercial;

-- Cria tabela vendedor
CREATE TABLE vendedor(
	id_vendedor INT AUTO_INCREMENT,
    nome_vendedor VARCHAR(100) NOT NULL,
    telefone_vendedor VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(80) NOT NULL UNIQUE,
    
    PRIMARY KEY (id_vendedor)
);

-- Cria tabela setor
CREATE TABLE setor(
	id_setor INT AUTO_INCREMENT,
    nome_regiao VARCHAR(80) NOT NULL UNIQUE,
    
    PRIMARY KEY (id_setor)
);

-- Cria tabela cidade
CREATE TABLE cidade(
	id_cidade INT AUTO_INCREMENT,
    nome_cidade VARCHAR(100) NOT NULL UNIQUE,
    id_setor INT NOT NULL,
    
    PRIMARY KEY (id_cidade),
    FOREIGN KEY (id_setor) REFERENCES setor(id_setor)
);

-- Cria tabela cliente
CREATE TABLE cliente(
	id_cliente INT AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    id_vendedor INT NOT NULL,
    id_cidade INT NOT NULL,
    
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor),
    FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade)
);

-- Cria tabela pedido
CREATE TABLE pedido(
	id_pedido INT AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    status_pedido ENUM('pendente', 'a_caminho', 'entregue', 'cancelado') NOT NULL,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    
    PRIMARY KEY (id_pedido),
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

-- Mostrar tabelas
SHOW TABLES;

-- Mostrar descritivo da tabela
-- vendedor, cliente, pedido, cidade, setor
DESC pedido;

-- Adicionando default 'pendente' na tabela pedido
ALTER TABLE pedido
MODIFY status_pedido 
    ENUM('pendente', 'a_caminho', 'entregue', 'cancelado') 
    NOT NULL 
    DEFAULT 'pendente';

-- impedindo valor_total ser negativo e maior que 0 
ALTER TABLE pedido
ADD CONSTRAINT chk_valor_total
CHECK (valor_total > 0);

-- impedindo nome ser vazio
ALTER TABLE cliente
ADD CONSTRAINT chk_cliente_nome
CHECK (LENGTH(nome_cliente) > 0);

ALTER TABLE cidade
ADD CONSTRAINT chk_cidade_nome
CHECK (LENGTH(nome_cidade) > 0);

ALTER TABLE setor
ADD CONSTRAINT chk_setor_nome
CHECK (LENGTH(nome_regiao) > 0);

ALTER TABLE vendedor
ADD CONSTRAINT chk_vendedor_nome
CHECK (LENGTH(nome_vendedor) > 0);
