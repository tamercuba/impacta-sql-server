# Laboratório I 

## Criando constraints com ALTER TABLE

1. Abra o script chamado **Cap02_CRIA_PEDIDOS_VAZIO.sql** e execute todo o código.
Isso irá criar um banco de dados chamado **PEDIDOS_VAZIO**, cuja estrutura é a mesma
do banco de dados **PEDIDOS** já utilizado;

1. Coloque em uso o banco de dados **PEDIDOS_VAZIO**;

1. Crie chaves estrangeiras para a tabela **TB_PEDIDO**:
    * Com **TB_CLIENTE**;
    * Com **TB_VENDEDOR**;

1. Crie chaves estrangeiras para a tabela **TB_PRODUTO**:
    * Com **TB_TIPOPRODUTO**;
    * Com **TB_UNIDADE**.

1. Crie chaves estrangeiras para a tabela **TB_ITENSPEDIDO**I:
    * Com **TB_PEDIDO**;
    * Com **TB_PRODUTO**;
    * Com **TB_COR**.

1. Crie uma chave única para o campo **UNIDADE** da tabela **TB_UNIDADE**;

1. Crie uma chave única para o campo **TIPO** da tabela **TB_TIPOPRODUTO**;

1. Crie constraints **CHECK** para a tabela **TB_PRODUTO**, considerando os seguintes
aspectos:
    * O preço de venda não pode ser menor que o preço de custo;
    * O preço de custo precisa ser maior que zero;
    * O campo **QTD_REAL** não pode ser menor que zero;
  
1. Crie constraints **CHECK** para a tabela **TB_ITENSPEDIDO**, considerando os seguintes
aspectos:
    * O campo **QUANTIDADE** deve ser maior ou igual a um;
    * O campo **PR_UNITARIO** deve ser maior que zero;
    * O campo **DESCONTO** não pode ser menor que zero e maior que 10.

1. Crie valores default para **TB_PRODUTO**, considerando os seguintes aspectos:
    * Zero para **PRECO_CUSTO** e **PRECO_VENDA**;
    * Zero para **QTD_REAL**, **QTD_MINIMA** e **QTD_ESTIMADA**;
    * Zero para **COD_TIPO** e **COD_UNIDADE**.
