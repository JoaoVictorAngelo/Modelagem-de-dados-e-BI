Desenvolvido por: João Victor de Oliveira Ângelo, RA 25002412

# 📂 MODELAGEM DE DADOS E BUSINESS INTELLIGENCE (BI)

## 🌟 Visão Geral do Projeto

Este projeto consiste na modelagem de um banco de dados comercial e na criação de um dashboard de Business Intelligence (BI) para análise de pedidos de Julho a Outubro.

---

## 🛠️ Guia de Execução no SQL Workbench

Para configurar e carregar a base de dados rapidamente, utilizaremos a função **Data Import/Restore** do SQL Workbench, que é ideal para este projeto.

### 1. ⚙️ Pré-requisitos

* **Servidor de Banco de Dados** (Ex: MySQL) instalado e em execução.
* **SQL Workbench** (ou cliente SQL) configurado e conectado ao servidor.

### 2. 🚀 Etapas de Carregamento da Base de Dados

Siga esta sequência para carregar toda a estrutura e os dados:

#### 2.1. Criação da Estrutura Inicial (DDL)

Antes de importar os dados, você precisa **criar a estrutura (Schema)** que receberá as informações.

1.  **Conecte-se** à sua instância no SQL Workbench.
2.  Abra o arquivo: **`Database_scripts/estrutura_ddl/db_comercial_ac.sql`**
3.  **Execute todo o conteúdo** deste script.
    > 💡 *Isso criará o banco de dados (se ainda não existir) e todas as tabelas vazias.*

#### 2.2. Importação dos Dados (DML - Método Rápido)

Utilizaremos o assistente de importação para carregar em massa os dados de povoamento:

1.  No SQL Workbench, clique em **Server** (Servidor).
2.  Selecione a opção **Data Import** (Importação de Dados).
3.  Na tela de **Setup** (Configuração), marque a opção **Import from Dump Project Folder** (Importar de Pasta de Projeto Dump).
4.  Clique em **Browse** (Procurar) e localize o caminho da pasta:
    * `.../MODELAGEM-DE-DADOS-E-BI/Database_scripts/carga_de_dados_dml/`
    > ⚠️ **Atenção:** Selecione a pasta que contém os 5 arquivos `.sql` de povoamento.
5.  Avance para a próxima tela (**Start Import**).
6.  Verifique se **todas as tabelas** estão selecionadas na lista de entidades a serem importadas.
7.  Clique em **Start Import** (Iniciar Importação).

#### 2.3. Finalização

1.  Após a importação ser concluída, clique no ícone **Refresh Schemas** (Atualizar Schemas) no seu painel de navegação do Workbench.
    > 🎉 **Pronto!** A base de dados estará criada, com todas as tabelas povoadas e prontas para uso.

---

## 📝 Documentação Adicional

Para entender o modelo de dados e a arquitetura do BI, consulte os seguintes arquivos na pasta `documentos/`:

* **MER.pdf:** Diagrama do Modelo Entidade-Relacionamento.
* **Relatorio tecnico.pdf:** Detalhes sobre a modelagem, transformações e decisões tomadas no projeto.
* **Declaracao PI, Comprovante de Inscrição e de Situação Cadastral :** Documentos exigidos para a entrega do PI
