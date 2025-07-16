# 🎬 Sistema de Gerenciamento de Cinema – MySQL

Este projeto consiste na criação de um banco de dados relacional para gerenciar sessões de cinema, filmes, salas, clientes e ingressos. O sistema foi desenvolvido utilizando **MySQL** e visa organizar e relacionar informações de forma estruturada.

## 📁 Estrutura do Projeto

O script SQL realiza:

- Criação do banco de dados `sistema_cinema`
- Criação das tabelas:
  - `filme`
  - `sala`
  - `sessao`
  - `cliente`
  - `ingresso`
- Inserção de dados simulados (7 cadastros completos)
- Consultas `SELECT` para visualização
- Atualizações com `UPDATE`
- Exclusão de registros com `DELETE`

---

## 🗃️ Tabelas e Relacionamentos

### 🎞️ Filme
- `id_filme` (PK)
- `nome`
- `duração`
- `faixa_etária`
- `gênero`

### 🪑 Sala
- `id_sala` (PK)
- `número`
- `capacidade`

### ⏰ Sessão
- `id_sessao` (PK)
- `data_sessao`
- `hora_sessao`
- `id_filme` (FK)
- `id_sala` (FK)
- `animação` (2D/3D)
- `idioma`

### 👤 Cliente
- `id_cliente` (PK)
- `nome`
- `cpf`
- `idade`
- `quantidade_ingresso`

### 🎟️ Ingresso
- `id_ingresso` (PK)
- `assento`
- `valor`
- `id_cliente` (FK)
- `id_sessao` (FK)

---

## 🔧 Comandos Utilizados

### ✅ Criação de banco e tabelas:
```sql
DROP DATABASE IF EXISTS sistema_cinema;
CREATE DATABASE IF NOT EXISTS sistema_cinema;
USE sistema_cinema;

-- Criação das tabelas...
```

### 📥 Inserção de dados:
```sql
INSERT INTO filme(nome, duracao, faixa_etaria, genero)
VALUES('Uncharted', 116, '12', 'Ação');
-- demais inserções para todas as entidades
```

### 🔍 Consultas:
```sql
SELECT * FROM cliente WHERE id_cliente > 1;
SELECT * FROM filme WHERE id_filme > 4;
```

### ✏️ Atualizações:
```sql
UPDATE cliente SET idade = 17 WHERE id_cliente = 1;
UPDATE filme SET genero = 'Animação' WHERE id_filme = 2;
```

### 🗑️ Exclusão:
```sql
DELETE FROM cliente WHERE id_cliente = 7;
```

---

## 📌 Requisitos

- MySQL instalado
- MySQL Workbench ou outro cliente para execução dos scripts

---

## 🚀 Como usar

1. Clone o repositório
2. Abra o script `.sql` no MySQL Workbench
3. Execute o script completo
4. Explore as consultas, atualizações e exclusões incluídas no final

---

## 📚 Aprendizados

Este projeto foi desenvolvido com o objetivo de praticar:

- Criação e modelagem de banco de dados relacional
- Uso de chaves primárias e estrangeiras
- Inserções com `INSERT INTO`
- Consultas básicas com `SELECT`
- Atualizações com `UPDATE`
- Exclusões com `DELETE`
- Boas práticas de SQL

---

## ✍️ Autor

**Ellen Yasmin de Souza Araújo**  
Estudante de Desenvolvimento de Sistemas e Design Web
