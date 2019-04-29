# Laboratório 1
## Atualizando e excluindo dados

**1.** Coloque o banco de dados **PEDIDOS** em uso;

**2.** Aumente o preço de custo de todos os produtos do tipo 2 em 15%;

> Utilize transação e a cláusula OUTPUT para conferir os resultados.

**3.** Faça com que os preços de venda dos produtos do tipo 2 fiquem 30% acima do preço de custo;

**4.** Altere o campo **IPI** de todos os produtos com **COD_TIPO = 3** para 5%;

**5.** Reduza em 10% o campo **QTD_MINIMA** de todos os produtos (multiplique **QTD_MINIMA** por 0.9);

**6.** Altere os seguintes campos do cliente de código 11:
	* **ENDERECO**: AV. CELSO GARCIA, 1234;
	* **BAIRRO**: TATUAPE;
	* **CIDADE**: SAO PAULO;
	* **ESTADO**: SP;
	* **CEP**: 03407080.

**7.** Copie **ENDERECO**, **BAIRRO**, **CIDADE**, **ESTADO** e **CEP** do cliente de código 13 para os campos **END_COB**, **BAI_COB**, **CID_COB**, **EST_COB** e **CEP_COB** do mesmo cliente;

**8.** Altere a tabela **TB_CLIENTE**, mudando o conteúdo do campo ICMS de clientes dos estados **RJ**, **RO**, **AC**, **RR**, **MG**, **PR**, **SC**, **RS**, **MS** e **MT** para 12;

**9.** Altere os campos **ICMS** de todos os clientes de SP para 18;

**10.** Altere o campo **ICMS** para 7 para clientes que não sejam dos estados **RJ**, **RO**, **AC**, **RR**, **MG**, **PR**, **SC**, **RS**, **MS**, **MT** e **SP**;
