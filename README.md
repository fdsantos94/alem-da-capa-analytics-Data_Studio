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
![Página 1](./assets/images/resumo_literario_visao_geral.png)
*Distribuição mensal de volume que permite a identificação de picos de produtividade e padrões cíclicos de leitura ao longo do ano.*

### Página 2: Detalhes e Curadoria
![Página 2](./assets/images/resumo_literario_tesouros_lidos.png)
*Implementação de tabela interativa que integra URLs dinâmicas para exibição de capas e autores, unindo rigor técnico de dados com uma interface visual rica.*

### Página 3: Comparativo interativo
![Página 2](./assets/images/evolucao_anual.png)
*Implementação de lógica comparativa que revela a saúde do hábito literário, permitindo uma leitura rápida de crescimento ou queda de produtividade.*

---
```text
/
📂 src/                        # Código fonte puro
│   📂 sql/
│   │   📂 raw/                # Definições de External Tables
│   │   📂 refined/            # Definições da Refined Tables
│   │   📂 analytics/          # View final e KPIs para o Looker
│   📂 routines/               # Stored Procedures Orquestradoras
│       ├── sp_orchestrator.sql
📂 assets/                     # Identidade visual e evidências
│   📂 images/                 # Prints do Dashboard (Página 1, 2 e 3)
└── README.md                   # Cartão de visitas do projeto