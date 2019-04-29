# Laboratório I

## Utilizando o comando JOIN para associar tabelas

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Liste os campos **NUM_PEDIDO**, **DATA_EMISSAO** e **VLR_TOTAL** de **PEDIDOS**, seguidos de **NOME** do **vendedor**;

**3.** Liste os campos **NUM_PEDIDO**, **DATA_EMISSAO** e **VLR_TOTAL** de **PEDIDOS**, seguidos de **NOME** do cliente;

**4.** Liste os pedidos com o nome do vendedor e o nome do cliente;

**5.** Liste os itens de pedido **(TB_ITENSPEDIDO)** com o nome do produto **(TB_PRODUTO.DESCRICAO)**;

**6.** Liste os campos **COD_PRODUTO** e **DESCRICAO** da **tabela **TB_PRODUTO**, seguidos da descrição do tipo de produto **(TB_TIPOPRODUTO.TIPO)**;

**7.** Liste os campos **COD_PRODUTO** e **DESCRICAO** da tabela **TB_PRODUTO**, seguidos da descrição do tipo de produto **(TB_TIPOPRODUTO.TIPO)** e do nome da unidade de medida **(TB_UNIDADE.UNIDADE)**;

**8.** Liste os campos **NUM_PEDIDO**, **NUM_ITEM**, **COD_PRODUTO**, **QUANTIDADE** e **PR_UNITARIO** da tabela **TB_ITENSPEDIDO**, e os campos **COD_PRODUTO** e **DESCRICAO** da tabela **TB_PRODUTO**, seguidos da descrição do tipo de produto **(TB_TIPOPRODUTO.TIPO)** e do nome da unidade de medida **(TB_UNIDADE.UNIDADE)**;

**9.** Liste os campos **NUM_PEDIDO**, **NUM_ITEM**, **COD_PRODUTO**, **QUANTIDADE** e **PR_UNITARIO** da tabela **TB_ITENSPEDIDO**, e os campos **COD_PRODUTO** e **DESCRICAO** da tabela **TB_PRODUTO**, seguidos da descrição do tipo de produto **(TB_TIPOPRODUTO.TIPO)**, do nome da unidade de medida **(TB_UNIDADE.UNIDADE)** e do nome da cor **(TB_COR.COR)**;

**10.** Liste todos os pedidos **(TB_PEDIDO)** do vendedor **MARCELO** em Jan/2014;

>Este exercício não especifica quais campos devem ser exibidos. Escolha você os campos que devem ser mostrados.

**11.** Liste os nomes dos clientes **(TB_CLIENTE.NOME)** que efetuaram compras em janeiro de 2014;

**12.** Liste os nomes de produtos **(TB_PRODUTO.DESCRICAO)** que foram vendidos em janeiro de 2014;

**13.** Liste **NUM_PEDIDO**, **VLR_TOTAL (PEDIDOS)** e **NOME (TB_CLIENTE)**. Mostre apenas pedidos de janeiro de 2014 e clientes que tenham **NOME** iniciado com **MARCIO**;

**14.** Liste **NUM_PEDIDO**, **QUANTIDADE** vendida e **PR_UNITARIO (TB_ITENSPEDIDO)**, **DESCRICAO (TB_PRODUTO)**, **NOME** do vendedor que vendeu cada item de pedido **(TB_VENDEDOR)**;

**15.** Liste todos os itens de pedido com desconto superior a 7%. Mostre **NUM_PEDIDO**, **DESCRICAO** do produto, **NOME** do cliente, **NOME** do vendedor e **QUANTIDADE** vendida;

**16.** Liste os itens de pedido com o nome do produto, a descrição do tipo, a descrição da unidade e o nome da cor, mas apenas os itens vendidos em janeiro de 2014 na cor **LARANJA**;

**17.** Liste **NOME** e **FONE1** dos fornecedores que venderam o produto **CANETA STAR I**;

**18.** Liste a **DESCRICAO** dos produtos comprados do fornecedor cujo **NOME** começa com **LINCE**;

**19.** Liste **NOME** e **FONE1** dos fornecedores, bem como **DESCRICAO** dos produtos com **QTD_REAL** abaixo de **QTD_MINIMA**;

**20.** Liste todos os produtos comprados do fornecedor cujo nome inicia-se com **FESTO**.
