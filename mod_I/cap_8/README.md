# Laboratório 1
## Atualizando tabelas com associações e subqueries

**1.** Coloque em uso o banco de dados **PEDIDOS**;

**2.** Altere a tabela **TB_CARGO**, mudando o salário inicial do cargo **OFFICE BOY** para 600,00;

**3.** Altere a tabela de cargos, estipulando 10% de aumento para o campo **SALARIO_INIC** de todos os cargos;

**4.** Transfira para o campo **SALARIO** da tabela **TB_EMPREGADO** o salário inicial cadastrado no cargo correspondente da **TB_CARGO**;

**5.** Reajuste os preços de venda de todos os produtos de modo que fiquem 30% acima do preço de custo **(PRECO_VENDA = PRECO_CUSTO * 1.3)**;

**6.** Reajuste os preços de venda dos produtos com **COD_TIPO** = 5, de modo que fiquem 20% acima do preço de custo;

**7.** Reajuste os preços de venda dos produtos com descrição do tipo igual à **REGUA**, de modo que fiquem 40% acima do preço de custo. Para isso, considere as seguintes informações:
	* **PRECO_VENDA** = **PRECO_CUSTO** * 1.4;
	* Para produtos com **TB_TIPOPRODUTO.TIPO** = 'REGUA';
	* É necessário fazer um **JOIN** de **TB_PRODUTO** com **TB_TIPOPRODUTO**.

**8.** Altere a tabela **TB_ITENSPEDIDO** de modo que todos os itens com produto indicado como **VERMELHO** passem a ser **LARANJA**. Considere somente os pedidos com data de entrega em outubro de 2014;

**9.** Altere o campo **ICMS** da tabela **TB_CLIENTE** para 12. Considere apenas clientes dos estados: **RJ**, **RO**, **AC**, **RR**, **MG**, **PR**, **SC**, **RS**, **MS** e **MT**;

**10.** Altere o campo **ICMS** para 18, apenas para clientes de SP;

**11.** Altere o campo **ICMS** da tabela **TB_CLIENTE** para 7. Considere apenas clientes que não sejam dos estados: **RJ**, **RO**, **AC**, **RR**, **MG**, **PR**, **SC**, **RS**, **MS**, **MT** e **SP**;

**12.** Crie a tabela **ESTADOS** com os respectivos campos:
	* **COD_ESTADO**: Inteiro, autonumeração e chave primária;
	* **SIGLA**: Char(2);
	* **ICMS**: Numérico, tamanho 4 com 2 decimais.

**13.** Copie os dados coletados do seguinte comando **SELECT** para a tabela **ESTADOS** utilizando um comando **INSERT**: `SELECT DISTINCT ESTADO, ICMS FROM TB_CLIENTE WHERE ESTADO IS NOT NULL` 

> O **SELECT** deve retornar 21 linhas e não repetir o Estado. Se o resultado for diferente, é porque os **UPDATES** de **ICMS** estão incorretos.

**14.** Crie o campo **COD_ESTADO** na tabela **TB_CLIENTE**;

**15.** Copie para **TB_CLIENTE.COD_ESTADO** o código do Estado gerado na tabela **ESTADOS**.
