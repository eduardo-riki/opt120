CREATE TABLE IF NOT EXISTS Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    senha VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Atividade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    descricao VARCHAR(255),
    data DATE
);

CREATE TABLE IF NOT EXISTS Usuario_Atividade (
    usuario_id INT,
    atividade_id INT,
    entrega DATE,
    nota INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id),
    FOREIGN KEY (atividade_id) REFERENCES Atividade(id)
);

/* ============================== */

SELECT * FROM Usuario;
SELECT * FROM Atividade;
SELECT * FROM Usuario_Atividade;

/* ============================== */

DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Atividade;
DROP TABLE IF EXISTS  Usuario_Atividade;

/* ============================== */
