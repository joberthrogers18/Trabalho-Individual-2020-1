# Trabalho Final de GCES - 2020/1

### **Aluno:** Joberth Rogers Tavares Costa **Matricula:** 16/0128013

</br>

<div style="display: flex;">

  ![Client Workflow](https://github.com/joberthrogers18/Trabalho-Individual-2020-1/workflows/Client%20Workflow/badge.svg?branch=master)

  ![API Workflow](https://github.com/joberthrogers18/Trabalho-Individual-2020-1/workflows/API%20Workflow/badge.svg?branch=master)

  [![DeepSource](https://deepsource.io/gh/joberthrogers18/Trabalho-Individual-2020-1.svg/?label=active+issues)](https://deepsource.io/gh/joberthrogers18/Trabalho-Individual-2020-1/?ref=repository-badge)
</div>

## Objetivo

<p style="align-text: justify;">
  Esse trabalho tem como objetivo estimular a prática de conteinerização de aplicações e desenvolvimento de um pipeline estruturado para execução de tarefas básicas durante o desenvolvimento de software.
</p>

</br>

## Pré Requisitos

    - Docker versão 17.04.0+
    - Docker Compose com sintaxe na versão 3.2+

</br>

## Ferramentas utilizados

### Deep Source

<p style="align-text: justify;">
  Ferramenta de analise estática de código, onde suas principais funcionalidades são identificação e correção de bugs, anti-patterns,  issues, e falhas de segurança em commit e pull request.
</p>

### Docker

<p style="align-text: justify;">
  Docker é um conjunto de produtos de plataforma como serviço que usam virtualização de nível de sistema operacional para entregar software em pacotes chamados contêineres.
</p>

### Github Actions

<p style="align-text: justify;">
  O GitHub Actions é um orquestrador de workflow. Através dele é possível construir um workflow com várias ações que vão descrever os passos necessários para compilar, testar, empacotar, criar releases e até fazer deploy de aplicações.
</p>

## Divisão do Trabalho

<p style="align-text: justify;">
  Através da ferramenta Docker e Docker-Compose foi possível conteinerização e orquestrar containers da aplicação, sendo um responsável por armazenar dados com container do Postgres, um para a API desenvolvida na linguagem Ruby e outro para o cliente da aplicação que usou o container Node. Para manipular e orquestrar o workflow da aplicação através da integração continua, foi usado o Github Actions pela simplicidade em criar pipelines automatizados e por fim foi usado a ferramenta DeepSource para coleta de métricas estáticas na aplicação.
</p>

</br>

## Como Executa

### Execução da Aplicação

<p style="align-text: justify;">
  Primeiro faça o build os arquivos da aplicação usando o comando abaixo:
</p>

    make build

<p style="align-text: justify;">
  Após buildado os arquivos, crie as bases dados executando o comando:
</p>

    make create-db

<p style="align-text: justify;">
  Crie as migrações API da aplicação usando o comando:
</p>

    make migrate-db

<p style="align-text: justify;">
  Por ultimo execute o comando para levantar todos os containers e executar a aplicação:
</p>

    make run

### Testes

<p style="align-text: justify;">
  Após criar e migrar as tabelas no Banco de Dados, execute o comando abaixo  para executar os testes do cliente:
</p>

    make test-client

<p style="align-text: justify;">
  Após criar e migrar as tabelas no Banco de Dados, execute o comando abaixo  para executar os testes da API:
</p>

    make test-api

</br>

## Comandos Uteis

<p style="align-text: justify;">
  Para melhorar a interatividade com as ferramentas, foi criado um arquivo de Makefile para ajudar na execução dos comandos. Os principais comandos estão presentes na tabela abaixo:
</p>

| Comando | Descrição |
| ------- | --------- |
| make build | Builda e conteineriza os arquivos da aplicação |
| make run | Executa a aplicação buildado pelo comando de **make build** |
| make create-db | Cria as base de dados da aplicação do zero no container de Postgres |
| make  migrate-db | Faz a migração das tabelas desenvolvidas para o banco de dados |
| make remove-all-instances | Remove os containers buildados |
| make test-api | Executa os testes da API em Ruby |
| make test-client | Executa os testes do cliente da aplicação |

