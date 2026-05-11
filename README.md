# Além da Capa: Pipeline Analítico de Hábitos Literários 📚

![Status do Projeto](https://img.shields.io/badge/Status-Conclu%C3%ADdo-brightgreen)
![GCP](https://img.shields.io/badge/Google_Cloud_Platform-BigQuery-blue)
![Looker](https://img.shields.io/badge/Looker_Studio-Visualização-yellow)

## 📌 Visão Geral
Este projeto simula uma arquitetura de dados corporativa end-to-end aplicada a um dataset pessoal de leituras. O objetivo foi transformar dados brutos (CSV) em insights estratégicos, utilizando as melhores práticas de **Engenharia de Dados** e **MIS**.

## 🏗️ Arquitetura Técnica (GCP Stack)

A solução foi construída sobre a **Google Cloud Platform**, garantindo escalabilidade e baixa manutenção:

1.  **Ingestão (Data Lake):** Armazenamento de arquivos brutos no **Google Cloud Storage**.
2.  **Processamento (Data Warehouse):** Modelagem em camadas (`raw`, `refined`, `analytics`) dentro do **BigQuery**.
3.  **Governança & Automação:** * Uso de **External Tables** com tratamento de encoding (ISO-8859-1).
    * Implementação de **Stored Procedures** e **Views** para encapsulamento de lógica de negócio.
    * **Orquestração:** Procedure mestre (`sp_orquestrador`) para execução sequencial do pipeline.
4.  **Visualização (BI):** Dashboard executivo no **Data Studio**.

### 2. Inteligência de BI
- **UX Dinâmica:** Injeção de metadados visuais (capas de livros e fotos de autores) via URL diretamente no dashboard.

## 📊 Visualização do Dashboard

### Página 1: Visão Executiva (KPIs Globais)
![Página 1](./assets/images/dash_pag1.png)
*Destaque para a jornada mensal de leitura e o funil de conversão de mundos favoritos.*

### Página 2: Detalhes e Curadoria
![Página 2](./assets/images/dash_pag2.png)
*Tabela interativa com filtros cruzados por autor e gênero.*

## 📂 Como Replicar
1. Configure o bucket no **Cloud Storage**.
2. Execute os scripts em `src/sql/raw/` para mapear as tabelas.
3. Chame a procedure de orquestração:
   ```sql
   call `seu-projeto.dataset.sp_orchestrator_habitos_leitura`();

---
```text
/
├── src/                        # Código fonte puro
│   ├── sql/
│   │   ├── raw/                # Definições de External Tables
│   │   ├── refined/            # Views de limpeza e tipagem
│   │   └── analytics/          # Views finais e KPIs para o Looker
│   └── routines/               # Stored Procedures e TVFs (Rotinas)
│       ├── sp_orchestrator.sql
│       └── get_favoritos.sql
├── assets/                     # Identidade visual e evidências
│   ├── images/                 # Prints do Dashboard (Página 1, 2 e 3)
│   └── diagrams/               # Desenho da arquitetura GCP
├── docs/                       # Documentação técnica e manual
│   ├── dicionario_dados.md     # O que cada coluna significa
│   └── manual_tecnico.md       # Passo a passo do setup no GCP
├── dist/                       # Scripts prontos para deploy (ex: .sql compilados)
└── README.md                   # Cartão de visitas do projeto