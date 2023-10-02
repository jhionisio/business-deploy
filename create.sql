CREATE TABLE Categoria (
    cat_id NUMBER(19,0) GENERATED BY DEFAULT AS IDENTITY,
    cat_num NUMBER(19,0) NOT NULL,
    cat_color VARCHAR2(255 CHAR) NOT NULL,
    cat_name VARCHAR2(25 CHAR) NOT NULL,
    PRIMARY KEY (cat_id)
);

CREATE TABLE Documento (
    doc_id NUMBER(19,0) GENERATED BY DEFAULT AS IDENTITY,
    doc_num NUMBER(19,0) NOT NULL,
    doc_digit VARCHAR2(11 CHAR) NOT NULL,
    doc_name VARCHAR2(255 CHAR) NOT NULL,  -- Correção no tamanho da coluna
    doc_body CLOB NOT NULL,
    categoria_id NUMBER(19,0) NOT NULL,
    PRIMARY KEY (doc_id),
    CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES Categoria (cat_id)
);
