# Estoque de uma Loja

## Descrição

Este projeto apresenta um banco de dados para o controle de estoque de uma loja de roupas.

O sistema permite organizar produtos, categorias, fornecedores, estoque e movimentações de entrada e saída de mercadorias.

## MER DER Conceitual

![MER DER Conceitual](imagem/mer_der_conceitual.drawio.png)

## MER DER Lógico

![MER DER Lógico](imagem/mer_der_logico.drawio.png)

## Dicionário de Dados

### Categoria

| Campo | Tipo | Descrição |
|---|---|---|
| id | INT | Identificador da categoria |
| nome | VARCHAR | Nome da categoria |
| descricao | VARCHAR | Descrição da categoria |

### Fornecedor

| Campo | Tipo | Descrição |
|---|---|---|
| id | INT | Identificador do fornecedor |
| razao_social | VARCHAR | Razão social da empresa |
| nome_fantasia | VARCHAR | Nome fantasia |
| cnpj | VARCHAR | CNPJ do fornecedor |
| telefone | VARCHAR | Telefone |
| email | VARCHAR | E-mail |
| endereco | VARCHAR | Endereço |

### Produto

| Campo | Tipo | Descrição |
|---|---|---|
| id | INT | Identificador do produto |
| nome | VARCHAR | Nome do produto |
| descricao | VARCHAR | Descrição do produto |
| preco | DECIMAL | Preço do produto |
| marca | VARCHAR | Marca do produto |
| id_categoria | INT | Categoria do produto |
| id_fornecedor | INT | Fornecedor do produto |

### Estoque

| Campo | Tipo | Descrição |
|---|---|---|
| id_estoque | INT | Identificador do estoque |
| id_produto | INT | Produto relacionado ao estoque |
| quantidade | INT | Quantidade disponível |
| quantidade_minima | INT | Quantidade mínima |
| localizacao | VARCHAR | Localização do produto |

### Movimentação de Estoque

| Campo | Tipo | Descrição |
|---|---|---|
| id_movimentacao | INT | Identificador da movimentação |
| id_produto | INT | Produto movimentado |
| tipo | ENUM | Tipo de movimentação: Entrada ou Saída |
| quantidade | INT | Quantidade movimentada |
| data | DATE | Data da movimentação |

## Dados de Teste

Os dados de teste estão disponíveis nos arquivos CSV:

- [categoria.csv](categoria.csv)
- [fornecedor.csv](fornecedor.csv)
- [produto.csv](produto.csv)
- [estoque.csv](estoque.csv)
- [movimentacao_estoque.csv](movimentacao_estoque.csv)

## Banco de Dados

O banco de dados utilizado no projeto é o MySQL/MariaDB.

### DDL

O arquivo `ddl.sql` contém os comandos para criação do banco de dados e das tabelas.

### DML

O arquivo `dml.sql` contém os comandos para inserção dos dados de teste.

## Arquivos do Projeto

```text
estoque_loja/
│
├── imagens/
│   ├── mer_der_conceitual.png
│   └── mer_der_logico.png
│
├── categoria.csv
├── fornecedor.csv
├── produto.csv
├── estoque.csv
├── movimentacao_estoque.csv
├── ddl.sql
├── dml.sql
└── README.md
