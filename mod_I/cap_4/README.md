# Laboratório I
## Utilizando o banco de dados PEDIDOS e listando suas tabelas com base em diferentes critérios

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Liste a tabela **TB_PRODUTO**, mostrando as colunas **COD_PRODUTO**, **DESCRICAO**, **PRECO_CUSTO**, **PRECO_VENDA** e calculando o 
lucro unitário **(PRECO_VENDA – PRECO_CUSTO)**;

**3.** Liste a tabela **TB_PRODUTO**, mostrando os campos **COD_PRODUTO**, DESCRICAO** e calculando o valor total investido no estoque daquele produto **(QTD_REAL * PRECO_CUSTO)**;

**4.** Liste a tabela **TB_ITENSPEDIDO*8, mostrando as colunas **NUM_PEDIDO**, **NUM_ITEM**, **COD_PRODUTO**, **PR_UNITARIO**, **QUANTIDADE**, **DESCONTO** e calculando o valor de cada item **(PR_UNITARIO * QUANTIDADE * (1-DESCONTO/100))**;

**5.** Liste a tabela **TB_PRODUTO**, mostrando as colunas **COD_PRODUTO**, **DESCRICAO**, **PRECO_CUSTO**, **PRECO_VENDA** e calculando lucro estimado em reais **(QTD_REAL * (PRECO_VENDA - PRECO_CUSTO))**;

**6.** Liste a tabela **TB_PRODUTO**, mostrando os campos *8COD_PRODUTO**, **DESCRICAO**, **PRECO_CUSTO**, **PRECO_VENDA**, calculando o lucro unitário em reais **(PRECO_VENDA – PRECO_CUSTO)** e o lucro unitário percentual **((100 * (PRECO_VENDA - PRECO_CUSTO) / PRECO_CUSTO))**.

# Laboratório II
## Utilizando o banco de dados PEDIDOS e listando suas tabelas com base em novos critérios

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Liste tabela **TB_PRODUTO**, criando campo calculado **(QTD_REAL - QTD_MINIMA)**, e filtre os registros resultantes, mostrando somente aqueles que tiverem a quantidade real abaixo da quantidade mínima;

OBS: Neste caso, o exercício não cita as colunas que devem ser exibidas. Sendo assim, basta utilizar o símbolo asterisco (*) ou, então, colocar as colunas que julgar importantes.

**3.** Liste a tabela **TB_PRODUTO**, mostrando os registros que tenham quantidade real acima de 5000;

**4.** Liste produtos com preço de venda inferior a R$0,50;

**5.** Liste a tabela **TB_PEDIDO** com valor total **(VLR_TOTAL)** acima de R$15.000,00;

**6.** Liste produtos com **QTD_REAL** entre 500 e 1000 unidades;

**7.** Liste pedidos com valor total entre R$15.000,00 e R$25.000,00;

**8.** Liste produtos com quantidade real acima de 5000 e código do tipo igual a 6;

**9.** Liste produtos com quantidade real acima de 5000 ou código do tipo igual a 6;

**10.** Liste pedidos com valor total inferior a R$100,00 ou acima de R$100.000,00;

**11.** Liste produtos com **QTD_REAL** menor que 500 ou maior que 1000. 



# Laboratório III
## Utilizando o banco de dados PEDIDOS

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Liste clientes do estado de São Paulo (SP);

**3.** Liste clientes dos estados de Minas Gerais e Rio de Janeiro (MG, RJ);

**4.** Liste clientes dos estados de São Paulo, Minas Gerais e Rio de Janeiro (SP, MG, RJ);

**5.** Liste os vendedores com o nome LEIA;

**6.** Liste todos os clientes que tenham **NOME** começando com **BRINDES**;

**7.** Liste todos os clientes que tenham **NOME** terminando com **BRINDES**;

**8.** Liste todos os clientes que tenham **NOME** contendo **BRINDES**;

**9.** Liste todos os produtos com **DESCRICAO** começando por **CANETA**;

**10.** Liste todos os produtos com **DESCRICAO** contendo **SPECIAL**;

**11.** Liste todos os produtos com **DESCRICAO** terminando por **GOLD**;

**12.** Liste todos os clientes que tenham a letra A como segundo caractere do nome;

**13.** Liste todos os produtos que tenham 0 (ZERO) como segundo caractere do campo **COD_PRODUTO**;

**14.** Liste todos os produtos que tenham a letra A como terceiro caractere do campo **COD_PRODUTO**.



# Laboratório 4
## Utilizando novamente o banco de dados PEDIDOS e listando suas tabelas com base em outros critérios

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Liste todos os pedidos com data de emissão anterior a Jan/2014;

**3.** Liste todos os pedidos com data de emissão no primeiro semestre de 2014;

**4.** Liste todos os pedidos com data de emissão em janeiro e junho de 2014;

**5.** Liste todos os pedidos do Vendedor Código 1 em Jan/2014;

**6.** Liste os pedidos emitidos em Jan/2014 em uma sexta-feira. 
