# Laboratório 1

## Revisando comandos

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Liste todos os pedidos (**TB_PEDIDO**) do vendedor **‘MARCELO’** em janeiro de 2014;

**3.** Liste todos os pedidos de janeiro de 2014, mostrando o nome do cliente e do vendedor em cada pedido;

**4.** Liste todos os itens de **TB_PEDIDO** de janeiro de 2014 com desconto superior a 7%. Devem ser mostrados **NUM_PEDIDO**, **DESCRICAO** do produto, **NOME** do cliente, nome do **VENDEDOR** e **QUANTIDADE** vendida;

**5.** Calcule a quantidade de pedidos cadastrados em janeiro de 2014 e o maior e o menor valor de pedido (**VLR_TOTAL**);

**6.** Calcule o valor total vendido (soma de **TB_PEDIDO.VLR_TOTAL**) e o valor da comissão (soma de **TB_PEDIDO.VLR_TOTAL * TB_VENDEDOR.PORC_COMISSAO /100**) de cada vendedor em janeiro de 2014;

**7.** Liste os nomes e o total comprado pelos 10 clientes que mais compraram em janeiro de 2014;

**8.** Liste os nomes dos clientes que não compraram em janeiro de 2014;

**9.** Reajuste os preços de venda de todos os produtos com **COD_TIPO** = 5, de modo que fiquem 20% acima do preço de custo;

> Para calcular a porcentagem de 20%, devemos, na tabela **TB_PRODUTO**, atribuir a **PRECO_VENDA** o valor **PRECO_CUSTO** multiplicado por 1.2. Lembrando que esse cálculo só deve ser feito para produtos com **COD_TIPO** = 5.

**10.** Reajuste os preços de venda de todos os produtos com descrição do tipo igual a
**REGUA**, de modo que fiquem 40% acima do preço de custo.

> Para calcular a porcentagem de 40%, devemos, na tabela **TB_PRODUTO**, atribuir a **PRECO_VENDA** o valor **PRECO_CUSTO** multiplicado por 1.4. Lembrando que esse cálculo só deve ser feito para produtos com **TB_TIPOPRODUTO.TIPO** igual a **REGUA**. Porém, para realizar esse cálculo, devemos fazer um **JOIN** da tabela **TB_PRODUTO** com a tabela **TB_TIPOPRODUTO**.

# Laboratório 2

## Trabalhando com opções adicionais e com o comando MERGE

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Gere uma cópia da tabela **TB_PRODUTO** chamada **PRODUTOS_COPIA**;

**3.** Exclua da tabela **PRODUTOS_COPIA** os produtos que sejam do tipo **‘CANETA’**, exibindo os registros que foram excluídos (**OUTPUT**);

**4.** Aumente em 10% os preços de venda dos produtos do tipo **REGUA**, mostrando com **OUTPUT** as seguintes colunas: **ID_PRODUTO**, **DESCRICAO**, **PRECO_VENDA_ANTIGO**
e **PRECO_VENDA_NOVO**;

**5.** Utilizando o comando **MERGE**, faça com que a tabela **PRODUTOS_COPIA** volte a ser idêntica à tabela **TB_PRODUTO**, ou seja, o que foi deletado de **PRODUTOS_COPIA** deve ser reinserido, e os produtos que tiveram seus preços alterados devem ser alterados novamente para que voltem a ter o preço anterior. O MERGE deve possuir uma cláusula **OUTPUT** que mostre as seguintes colunas: ação executada pelo **MERGE** (**DELETE**, **INSERT**, **UPDATE**), **ID_PRODUTO**, **PRECO_VENDA_ANTIGO**, **PRECO_VENDA_NOVO**.

### B – Trabalhando com consultas cruzadas

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Desenvolva uma consulta que retorne o Estado do cliente, Valor total de compra e o mês de todas as compras do ano de 2013;

**3.** Realize uma rotação da consulta para apresentar a soma dos meses por Estado;

**4.** Utilizando a consulta anterior, acrescente a Cidade do cliente.

### C – Utilizando Common Table Expressions (CTE)

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Utilizando uma consulta com expressão **CTE**, apresente: mês, ano, o maior pedido, número do pedido e o nome do cliente, mas somente do ano de 2013.

