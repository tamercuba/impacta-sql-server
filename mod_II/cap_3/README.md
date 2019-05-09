# Laboratório 1

## Criando e associando UDDTs, regras de validação e objetos DEFAULTs

**1.** Crie os seguintes **UDDTs**:

* TIPO_CODIGO INT NOT NULL
* TIPO_ENDERECO VARCHAR(60) NULL
* TIPO_FONE CHAR(14) NULL
* TIPO_SEXO CHAR(1) NOT NULL
* TIPO_ALIQUOTA NUMERIC(4,2) NULL
* TIPO_PRAZO INT NOT NULL

**2.** Exiba os UDDTs recém-criados;

**3.** Crie as seguintes regras de validação: **R_SEXO** Aceita somente '**F**' e '**M**' **R_ALIQUOTA** Números não negativos **R_PRAZO** Números no intervalo de 1 até 60 

**4.** Exiba as regras de validação recém-criadas;

**5.** Associe as regras aos **UDDTs**;

* R_SEXO ao UDDT TIPO_SEXO
* R_ALIQUOTA ao UDDT TIPO_ALIQUOTA
* R_PRAZO ao UDDT TIPO_PRAZO

**6.** Crie os seguintes objetos **DEFAULT**:

* D_SEXO "M"
* D_ALIQUOTA 0 (ZERO)
* D_PRAZO 1

**7.** Exiba os **DEFAULTs** recém-criados;

**8.** Associe os **DEFAULTs** aos **UDDTs**;

* D_SEXO a TIPO_SEXO
* D_ALIQUOTA a TIPO_ALIQUOTA
* D_PRAZO a TIPO_PRAZO

**9.** Crie a tabela **PESSOAS**, seguindo o modelo adiante:

* COD_PESSOA TIPO_CODIGO autonumeração chave primária
* NOME VARCHAR(30)
* ENDERECO TIPO_ENDERECO
* SEXO TIPO_SEXO

**10.** Crie a tabela **CONTAS**, seguindo o modelo adiante:

* COD_CONTA TIPO_CODIGO autonumeração chave primária
* VALOR NUMERIC(10,2)
* QTD_PARCELAS TIPO_PRAZO
* PORC_MULTA TIPO_ALIQUOTA

**11.** Insira cinco registros na tabela PESSOAS;

**12.** Exiba os registros da tabela **PESSOAS**;

**13.** Crie a tabela **FUNCIONARIO**, seguindo o modelo adiante:

* FUNCIONARIO
* COD_FUNC TIPO_CODIGO chave primária
* NOME VARCHAR(30)
* ENDERECO VARCHAR(80)
* SEXO TIPO_SEXO

**14.** Crie um sinônimo de nome **tb_Funcionario** para a tabela **FUNCIONARIO**;

**15.** Crie uma **SEQUENCE** de nome **SQ_FUNCIONARIO**, que inicie em 100 com incremento 2;

**16.** Insira um registro na tabela **FUNCIONARIO** utilizando a **SEQUENCE** **SQ_FUNCIONARIO** e o sinônimo **tb_Funcionario**.

# Laboratório 2

## Trabalhando com objetos binários

**1.** Crie a tabela **TB_DOCUMENTO** com as seguintes características:

* **ID_DOCUMENTO**, inteiro, autonumerável e chave primária;
* Descrição do documento – Texto livre com até 100 caracteres;
* Data do Cadastro – Deve possuir valor padrão (Data e Hora do servidor);
* Documento – Campo binário.

**2.** Insira dois documentos na tabela **TB_DOCUMENTO**;

**3.** Consulte a tabela **TB_DOCUMENTO**.

## Habilitando FILETABLE

**1.** Acesse o **SQL Configuration Tools**;

**2.** Escolha o SQL Server Configuration Manager;

**3.** Selecione o serviço do **SQL Server** e a guia **FILESTREAM**;

**4.** Habilite as opções:

* Enable FILESTREAM for Transact-SQL access;
* Enable FILESTREAM for file I/O access;
* Informe o nome do compartilhamento do FILESTREAM;
* Allow remote clientes access to FILESTREAM data.

**5.** No **SQL Server Management Studio**, execute o seguinte comando: 

```sql
EXEC sp_configure filestream_access_level, 2
RECONFIGURE
```

**6.** Para criar um banco com **FILESTREAM**, execute o comando adiante: 

```sql
CREATE DATABASE Banco_LAB3
ON PRIMARY
(Name = FG_Filestream_PRIMARY,
FILENAME = 'C:\DADOS\LAB_Filestream_DATA3.mdf'),
FILEGROUP FG_Filestream_FS CONTAINS FILESTREAM
(NAME = Filestream_ARQ,
FILENAME='C:\DADOS\LAB_Filestream_ARQ3')
LOG ON
(Name = Filestream_log,
FILENAME = 'C:\DADOS\LAB_Filestream_log3.ldf')
WITH FILESTREAM (NON_TRANSACTED_ACCESS = FULL,
DIRECTORY_NAME = N'Filestream_ARQ3');
GO
```

## Inserindo e visualizando arquivos
**1.** Coloque o banco **BANCO_LAB3** em uso;

**2.** Crie uma tabela **FILETABLE** de nome **FT_Documento**;

**3.** Insira dois documentos nessa tabela;

**4.** Visualize os documentos de forma gráfica;

**5.** Visualize os documentos com comando **TSQL**.

# Laboratório 3
## Trabalhando com colunas computadas

**1.** Coloque o banco **PEDIDOS** em uso;

**2.** Crie a tabela **TB_FUNC_IDADE** com os seguintes campos: `Id_funcionario inteiro, auto numerável e chave primária` , `Nome do funcionário alfanumérico com 50 caracteres`, `Data de Nascimento Campo data`, `Idade Campo calculado`.

**3.** Insira os dados da tabela de empregados para a tabela **TB_FUNC_IDADE**;

**4.** Consulte as informações e verifique o campo calculado;

**5.** Adicione o campo **VLR_ITEM** na tabela **TB_ITENSPEDIDO**, com o cálculo adiante: **PR_UNITARIO * QUANTIDADE * (1 – DESCONTO /100)**

**6.** Faça uma consulta na tabela e verifique o resultado.

