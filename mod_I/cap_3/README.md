# Laboratório I
## Criando um banco de dados para administrar as vendas de uma empresa 

**1.** Crie um banco de dados chamado **PEDIDOS_VENDA** e coloque-o em uso;

**2.** Nesse banco de dados, crie uma tabela chamada **TB_PRODUTO** com os seguintes
campos:

Campo | Tipo
:-------:|:-------:
Código do produto | Inteiro, autonumeração e chave primária
Nome do produto | Alfanumérico
Código da unid. | de medida Inteiro
Código da categoria | Inteiro
Quantidade em estoque | Numérico
Quantidade mínima | Numérico
Preço de custo | Numérico
Preço de venda | Numérico
Características técnicas | Texto longo
Fotografia | Binário longo

**3.** Crue a tavela **TB_UNIDADE** para armazenar unidades de medida:
Campo | Tipo
:-------:|:--------:
Código da unidade | Inteiro, autonumeração e chave primária
Nome da unidade | Alfanumérico

**4.** Na tabela **TB_UNIDADE**, insira os seguintes dados: **PEÇAS**, **METROS**, **QUILOGRAMAS**,
**DÚZIAS**, **PACOTE**, **CAIXA**;

**5.** Crie a tabela **TB_CATEGORIA** para armazenar as categorias dos produtos:

Campo | Tipo
:------:|:--------:
Código da categoria | Inteiro, autonumeração e chave primária
Nome da categoria | Alfanumérico

**6.** Na tabela **TB_CATEGORIA**, insira os seguintes dados: **MOUSE**, **PEN-DRIVE**,
**MONITOR DE VIDEO**, **TECLADO**, **CPU**, **CABO DE REDE**;

**7.** Insira os produtos a seguir utilizando a cláusula OUTPUT para mostrar os valores
inseridos:

Produto | Unidade | Categoria | Quant. | Qtd. Mínima | Preço Custo | Preço Venda 
:--------:|:---------:|:-----------:|:--------:|:-------------:|:-------------:|:-------------:
Caneta Azul | 1 | 1 | 150 | 40 | 0,50 | 0,75
Caneta Verde | 1 | 1 | 50 | 40 | 0,50 | 0,75
Caneta Vermelha | 1 | 1 | 80 | 35 | 0,50 | 0,75
Lápis | 1 | 1 | 400 | 80 | 0,50 | 0,80
Régua | 1 | 1 | 40 | 10 | 1,00 | 1,50
