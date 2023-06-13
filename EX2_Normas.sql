--9. SQL para listar vendas por cliente 
--(utilizar qualquer cliente para teste)
select c.nome as nome_cliente, p.nome as nome_produto
from vendas_produto vp
inner join vendas v on v.id = vp.venda
inner join cliente c on c.id = v.cliente
inner join produto p on p.id = vp.produto;


--8. SQL para listar clientes por cidade 
--(utilizar qualquer cidade para testes)

select cli.nome 
from cliente cli
inner join endereço e on e.id = cli.id 
inner join cidade c on c.id = e.id and c.nome = 'Tubarão';


--10. SQL com o tipo de join mais adequado para listar todos 
--os produtos e categorias (mesmo que não tenha produto 
--cadastrado para uma categoria específica).

select pro.nome, cat.tipo
from produto pro
inner join categoria_de_produtos cat on cat.id = pro.tipo union all
select null, cat.tipo 
from categoria_de_produtos cat
left join produto pro on pro.tipo = cat.id 
where pro.tipo is null;  

--11. Elaborar comandos SQL para mais três relatórios 
--gerenciais (se coloque no lugar do usuário do sistema para 
--saber quais informações são importantes nesse contexto).

 --filtrar as vendas com base na quantidade de produtos vendidos
SELECT c.nome as nome_cliente, vp.venda as venda_do_cliente
, p.nome as nome_produto, vp.qt as quantidade
FROM vendas_produto vp
INNER JOIN vendas v ON v.id = vp.venda
INNER JOIN cliente c ON c.id = v.cliente
INNER JOIN produto p ON p.id = vp.produto
WHERE vp.qt >= 6;



--filtrar por nome do produto
SELECT c.nome as nome_cliente, vp.venda as venda_do_cliente, p.nome as nome_produto
FROM vendas_produto vp
INNER JOIN vendas v ON v.id = vp.venda
INNER JOIN cliente c ON c.id = v.cliente
INNER JOIN produto p ON p.id = vp.produto
WHERE p.nome = 'Miojo';


--filtrar por cliente
SELECT c.nome as nome_cliente, vp.venda as venda_do_cliente
, p.nome as nome_produto, vp.qt as quantidade
FROM vendas_produto vp
INNER JOIN vendas v ON v.id = vp.venda
INNER JOIN cliente c ON c.id = v.cliente
INNER JOIN produto p ON p.id = vp.produto
WHERE c.nome = 'Carla';



