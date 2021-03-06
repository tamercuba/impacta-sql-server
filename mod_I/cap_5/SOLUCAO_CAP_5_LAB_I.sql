-- MOD 5

-- LAB I 


-- 1
use PEDIDOS;
go

-- 2
SELECT  TB_PEDIDO.NUM_PEDIDO,
		TB_PEDIDO.DATA_EMISSAO,
		TB_PEDIDO.VLR_TOTAL,
		TB_VENDEDOR.NOME
FROM TB_PEDIDO JOIN TB_VENDEDOR ON TB_PEDIDO.CODVEN = TB_VENDEDOR.CODVEN;

-- 3
SELECT  P.NUM_PEDIDO,
		P.DATA_EMISSAO,
		P.VLR_TOTAL,
		C.NOME
FROM TB_PEDIDO AS P JOIN TB_CLIENTE AS C ON P.CODCLI = C.CODCLI;

-- 4
SELECT  P.NUM_PEDIDO, 
		C.NOME,
		V.NOME
FROM TB_PEDIDO AS P 
JOIN TB_CLIENTE AS C ON P.CODCLI = C.CODCLI
JOIN TB_VENDEDOR AS V ON V.CODVEN = P.CODVEN;

-- 5
SELECT  I.NUM_PEDIDO,
		I.ID_PRODUTO,
		P.DESCRICAO
FROM TB_ITENSPEDIDO AS I JOIN TB_PRODUTO AS P 
ON I.ID_PRODUTO = P.ID_PRODUTO;

-- 6
SELECT  P.COD_PRODUTO,
		P.DESCRICAO,
		T.TIPO
FROM TB_PRODUTO AS P JOIN TB_TIPOPRODUTO AS T
ON P.COD_TIPO = T.COD_TIPO;

-- 7
SELECT  P.COD_PRODUTO,
		P.DESCRICAO,
		T.TIPO,
		U.UNIDADE
FROM TB_PRODUTO AS P 
JOIN TB_TIPOPRODUTO AS T ON P.COD_TIPO = T.COD_TIPO
JOIN TB_UNIDADE AS U	 ON P.COD_UNIDADE = U.COD_UNIDADE;

-- 8 
SELECT  I.NUM_PEDIDO,
		I.NUM_ITEM,
		I.COD_PRODUTO,
		I.QUANTIDADE,
		I.PR_UNITARIO,
		P.COD_PRODUTO,
		P.DESCRICAO,
		T.TIPO,
		U.UNIDADE
FROM TB_PRODUTO		AS P
JOIN TB_ITENSPEDIDO AS I ON I.ID_PRODUTO = P.ID_PRODUTO
JOIN TB_TIPOPRODUTO AS T ON T.COD_TIPO = P.COD_TIPO
JOIN TB_UNIDADE		AS U ON U.COD_UNIDADE = P.COD_UNIDADE;

-- 9 
SELECT  I.NUM_PEDIDO,
		I.NUM_ITEM,
		I.QUANTIDADE,
		I.PR_UNITARIO,
		P.COD_PRODUTO,
		P.DESCRICAO,
		T.TIPO,
		T_U.UNIDADE,
		C.COR
FROM TB_ITENSPEDIDO AS I
JOIN TB_PRODUTO		AS P	ON P.ID_PRODUTO = I.ID_PRODUTO
JOIN TB_TIPOPRODUTO AS T	ON T.COD_TIPO = P.COD_TIPO
JOIN TB_UNIDADE		AS T_U  ON T_U.COD_UNIDADE = P.COD_UNIDADE 
JOIN TB_COR			AS C	ON C.CODCOR = I.CODCOR

-- 10
SELECT  P.NUM_PEDIDO,
		P.OBSERVACOES,
		P.DATA_EMISSAO,
		V.NOME
FROM TB_PEDIDO AS P JOIN TB_VENDEDOR AS V ON P.CODVEN = V.CODVEN
WHERE YEAR(P.DATA_EMISSAO) = 2014 AND MONTH(P.DATA_EMISSAO) = 1 AND V.NOME = 'MARCELO';

-- 11
SELECT  C.NOME,
		P.NUM_PEDIDO,
		P.DATA_EMISSAO
FROM TB_CLIENTE AS C
JOIN TB_PEDIDO  AS P ON C.CODCLI = P.CODCLI
WHERE P.DATA_EMISSAO BETWEEN '2014.1.1' AND '2014.1.31';

-- 12 
SELECT  P.DESCRICAO,
		PD.NUM_PEDIDO
FROM TB_ITENSPEDIDO AS I 
JOIN TB_PRODUTO		AS P  ON P.ID_PRODUTO = I.ID_PRODUTO
JOIN TB_PEDIDO	    AS PD ON PD.NUM_PEDIDO = I.NUM_PEDIDO
WHERE PD.DATA_EMISSAO BETWEEN '2014.01.01' AND '2014.01.31';

-- 13
SELECT  P.NUM_PEDIDO,
		P.VLR_TOTAL,
		P.DATA_EMISSAO,
		C.NOME
FROM TB_PEDIDO  AS P
JOIN TB_CLIENTE AS C ON P.CODCLI = C.CODCLI
WHERE P.DATA_EMISSAO BETWEEN '2014.01.01' AND '2014.01.31' AND C.NOME LIKE 'MARCIO%';

-- 14
SELECT  P.NUM_PEDIDO,
		P.VLR_TOTAL,
		I.PR_UNITARIO,
		PR.DESCRICAO,
		V.NOME
FROM TB_PEDIDO		AS P
JOIN TB_ITENSPEDIDO AS I  ON P.NUM_PEDIDO = I.NUM_PEDIDO 
JOIN TB_PRODUTO		AS PR ON PR.ID_PRODUTO = I.ID_PRODUTO
JOIN TB_VENDEDOR	AS V  ON V.CODVEN = P.CODVEN;

-- 15
SELECT  I.NUM_PEDIDO,
		PR.DESCRICAO,
		C.NOME,
		V.NOME,
		I.QUANTIDADE
FROM TB_ITENSPEDIDO AS I
JOIN TB_PEDIDO		AS P  ON P.NUM_PEDIDO = I.NUM_PEDIDO
JOIN TB_PRODUTO     AS PR ON PR.ID_PRODUTO = I.ID_PRODUTO
JOIN TB_CLIENTE		AS C  ON C.CODCLI = P.CODCLI
JOIN TB_VENDEDOR	AS V  ON V.CODVEN = P.CODVEN
WHERE I.DESCONTO > 7;

-- 16
SELECT	PR.DESCRICAO,
		T.TIPO,
		U.UNIDADE,
		C.COR
FROM TB_PEDIDO		AS P 
JOIN TB_ITENSPEDIDO AS I  ON I.NUM_PEDIDO = P.NUM_PEDIDO
JOIN TB_PRODUTO		AS PR ON PR.ID_PRODUTO = I.ID_PRODUTO
JOIN TB_TIPOPRODUTO AS T  ON T.COD_TIPO = PR.COD_TIPO
JOIN TB_UNIDADE		AS U  ON U.COD_UNIDADE = PR.COD_UNIDADE
JOIN TB_COR			AS C  ON I.CODCOR = C.CODCOR
WHERE P.DATA_EMISSAO BETWEEN '2014.01.01' AND '2014.01.31'
AND C.COR = 'LARANJA' ;

-- 17
SELECT	P.DESCRICAO
FROM TB_FORNECEDOR AS F
JOIN TB_PROD_FORN  AS PF ON PF.COD_FORNECEDOR = F.COD_FORNECEDOR
JOIN TB_PRODUTO    AS P  ON P.ID_PRODUTO = PF.ID_PRODUTO
WHERE P.DESCRICAO = 'CANETA STAR I';

--18
SELECT  PR.DESCRICAO,
		V.NOME
FROM TB_PRODUTO		AS PR
JOIN TB_ITENSPEDIDO AS I  ON I.ID_PRODUTO = PR.ID_PRODUTO
JOIN TB_PEDIDO		AS P  ON P.NUM_PEDIDO = I.NUM_PEDIDO
JOIN TB_VENDEDOR	AS V  ON V.CODVEN = P.CODVEN
WHERE V.NOME LIKE 'LINCE%';

-- 19
SELECT  F.NOME,
		F.FONE1
FROM TB_FORNECEDOR F 
JOIN TB_PROD_FORN  PF ON PF.COD_FORNECEDOR = F.COD_FORNECEDOR
JOIN TB_PRODUTO    P  ON P.ID_PRODUTO = PF.ID_PRODUTO
WHERE P.QTD_REAL < P.QTD_MINIMA;

-- 20
SELECT  P.DESCRICAO
FROM TB_FORNECEDOR F
JOIN TB_PROD_FORN PF ON PF.COD_FORNECEDOR = F.COD_FORNECEDOR
JOIN TB_PRODUTO    P ON P.ID_PRODUTO = PF.ID_PRODUTO
WHERE F.NOME LIKE 'FESTO%'



SELECT * FROM TB_DEPARTAMENTO
WHERE COD_DEPTO NOT IN
					 (SELECT DISTINCT COD_DEPTO 
					 FROM TB_EMPREGADO
					 WHERE COD_DEPTO IS NOT NULL)


SELECT * FROM INFORMATION_SCHEMA.TABLES;
