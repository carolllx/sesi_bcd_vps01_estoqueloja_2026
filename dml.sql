use estoque_loja;
insert into categoria (id, nome, descricao) values
(1, 'Camisetas', 'Camisetas masculinas e femininas'),
(2, 'Calcas', 'Calcas jeans e casuais'),
(3, 'Vestidos', 'Vestidos de diversos modelos'),
(4, 'Jaquetas', 'Jaquetas para dias frios');

insert into fornecedor (id, razao_social, nome_fantasia, cnpj, telefone, email, endereco) values
(1, 'Moda Brasil LTDA', 'Moda Brasil', '12.345.678/0001-90', '1933331000', 'modabrasil@gmail.com', 'Rua das Flores, 100'),
(2, 'Fashion Style LTDA', 'Fashion Style', '23.456.789/0001-81', '1933332000', 'fashion@gmail.com', 'Avenida Brasil, 200'),
(3, 'Jeans Brasil LTDA', 'Jeans Brasil', '34.567.890/0001-72', '1933333000', 'jeans@email.com', 'Rua Central, 300');

insert into produto (id, nome, descricao, preco, marca, id_categoria, id_fornecedor) values
(1, 'Camiseta Branca', 'Camiseta basica branca', 49.90, 'Moda Brasil', 1, 1),
(2, 'Calca Jeans', 'Calca jeans azul', 129.90, 'Jeans Brasil', 2, 3),
(3, 'Vestido Floral', 'Vestido estampado floral', 159.90, 'Fashion Style', 3, 2),
(4, 'Jaqueta Jeans', 'Jaqueta jeans azul', 199.90, 'Jeans Brasil', 4, 3);

insert into estoque (id_estoque, id_produto, quantidade, quantidade_minima, localizacao) values
(1, 1, 30, 10, 'Prateleira A1'),
(2, 2, 20, 5, 'Prateleira B1'),
(3, 3, 15, 5, 'Prateleira C1'),
(4, 4, 10, 3, 'Prateleira D1');

insert into movimentacao_estoque (id_movimentacao, id_produto, tipo, quantidade, data) values
(1, 1, 'Entrada', 30, '2026-09-01'),
(2, 2, 'Entrada', 20, '2026-09-02'),
(3, 3, 'Entrada', 15, '2026-09-03'),
(4, 1, 'Saida', 5, '2026-09-05'),
(5, 2, 'Saida', 3, '2026-09-06'),
(6, 4, 'Entrada', 10, '2026-09-07');

select * from categoria;
select * from fornecedor;
select * from produto;
select * from estoque;
select * from movimentacao_estoque;