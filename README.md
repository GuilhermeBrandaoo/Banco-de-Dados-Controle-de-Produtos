# 📦 Projeto 2 – Controle de Produtos (MySQL Básico)

Este projeto faz parte dos meus estudos em **MySQL básico**, com foco em **prática real** para consolidar conceitos de banco de dados, modelagem simples e operações CRUD.

O objetivo não foi apenas “fazer funcionar”, mas **entender decisões, cometer erros e aprender com eles**.

---

## 🎯 Objetivo do Projeto

Criar um sistema simples de **controle de produtos**, permitindo:

- Cadastro de produtos
- Atualização de preços e estoque
- Exclusão de registros com base em regras
- Alterações na estrutura da tabela
- Prática de lógica com SQL

---

## 🛠️ Tecnologias Utilizadas

- **MySQL**
- **SQL**

---

## 🗄️ Estrutura da Tabela

Tabela `produtos` com os seguintes campos:

- **id**: identificador único (PRIMARY KEY, AUTO_INCREMENT)
- **nome_produto**: nome do produto (NOT NULL, UNIQUE)
- **preco**: valor do produto (DECIMAL)
- **quantidade_estoque**: quantidade disponível em estoque
- **categoria**: categoria do produto
- **fornecedor**: fornecedor do produto

---

## ✅ O que eu acertei

- Criação correta do banco de dados e uso do `USE`
- Uso de `AUTO_INCREMENT` e `PRIMARY KEY`
- Escolha do tipo `DECIMAL` para valores monetários
- Inserção de dados informando explicitamente as colunas
- Uso consciente de `UPDATE` com `WHERE`
- Atualização em massa de preços usando cálculo
- Uso de `ALTER TABLE` para:
  - Tornar campo `UNIQUE`
  - Adicionar novas colunas
- Exclusão de dados com regras claras (`DELETE` com filtro)

---

## 🧠 O que eu aprendi nesse projeto

- Que valores monetários devem usar **DECIMAL**, não FLOAT
- Que `DECIMAL(total, casas)` define limites reais do valor
- Que números **não precisam** de aspas (INT e DECIMAL)
- Que atualizar dados em massa exige muito cuidado
- Que posso usar cálculos diretamente no SQL, como:

```sql
UPDATE produtos
SET preco = preco * 1.10;
```


⚠️ Erros e pontos de melhoria
- Usei aspas em valores numéricos (ex: "199.00", "2")
  - O MySQL aceita, mas não é boa prática
- Escolhi DECIMAL(5,2) sem pensar inicialmente no limite máximo
  - Isso restringe o preço a 999.99
- Fiz atualizações consecutivas no mesmo registro
  - Funciona, mas em projetos reais pode gerar confusão
- Não defini NOT NULL para todos os campos importantes
  - Poderia reforçar regras de negócio


🔧 Melhorias que eu faria em uma próxima versão
- Ajustar o tipo de preco para suportar valores maiores
- Padronizar totalmente o uso de tipos numéricos sem aspas
