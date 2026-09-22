create database estoque_loja;
use estoque_loja;
create table categoria (
    id int primary key,
    nome varchar(100) not null,
    descricao varchar(255)
);

create table fornecedor (
    id int primary key,
    razao_social varchar(150) not null,
    nome_fantasia varchar(100) not null,
    cnpj varchar(18) not null unique,
    telefone varchar(20),
    email varchar(150),
    endereco varchar(255)
);

create table produto (
    id int primary key,
    nome varchar(100) not null,
    descricao varchar(255),
    preco decimal(10,2) not null,
    marca varchar(100),
    id_categoria int not null,
    id_fornecedor int not null,
    foreign key (id_categoria) references categoria(id),
    foreign key (id_fornecedor) references fornecedor(id)
);

create table estoque (
    id_estoque int primary key,
    id_produto int not null unique,
    quantidade int not null,
    quantidade_minima int not null,
    localizacao varchar(100),
    foreign key (id_produto) references produto(id)
);

create table movimentacao_estoque (
    id_movimentacao int primary key,
    id_produto int not null,
    tipo enum('Entrada','Saida') not null,
    quantidade int not null,
    data date not null,
    foreign key (id_produto) references produto(id)
);