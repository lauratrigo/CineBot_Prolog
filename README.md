# 🎬 CineBot - Sistema Especialista para Recomendação de Filmes

O **CineBot** é um chatbot desenvolvido em **Prolog (SWI-Prolog)** que atua como um **Sistema Especialista** para recomendação de filmes.

O projeto foi desenvolvido com o objetivo de solucionar um problema muito comum entre usuários de plataformas de streaming: a **paralisia de decisão**, situação em que a grande quantidade de opções dificulta a escolha de um filme.

Por meio de uma base de conhecimento contendo informações sobre diversos filmes, o sistema realiza recomendações inteligentes considerando o **gênero desejado** e a **duração aproximada** informada pelo usuário, retornando as opções mais próximas do tempo solicitado.

---

# 🚀 Funcionalidades

## 🎥 Recomendação Inteligente

- Escolha entre diferentes gêneros de filmes
- Busca por duração aproximada
- Conversão automática de minutos para horas e minutos
- Sugestões ordenadas pela menor diferença de tempo

## 🤖 Sistema Especialista

- Base de conhecimento construída em Prolog
- Motor de inferência baseado em unificação e backtracking
- Busca automática pelas melhores recomendações
- Ordenação inteligente utilizando diferença absoluta entre durações

## 💬 Chatbot Interativo

- Solicita o nome do usuário
- Exibe menu de gêneros
- Apresenta sinopse do filme recomendado
- Pergunta se o usuário deseja visualizar mais informações
- Permite solicitar novas recomendações
- Possibilita trocar de gênero sem reiniciar o programa
- Encerramento organizado da aplicação

## 🛡️ Tratamento de Entradas

- Validação de opções do menu
- Tratamento para entradas inválidas
- Mensagens amigáveis ao usuário
- Tratamento para ausência de filmes compatíveis

---

# 🧠 Como Funciona

O CineBot utiliza uma **base de conhecimento** composta por informações sobre filmes.

Após iniciar o chatbot, o usuário informa:

- Nome
- Gênero desejado
- Tempo aproximado em minutos

O sistema então:

1. Converte os minutos para horas e minutos;
2. Procura filmes do gênero escolhido;
3. Calcula a diferença entre o tempo desejado e a duração de cada filme;
4. Ordena os resultados do mais próximo para o mais distante;
5. Exibe uma recomendação acompanhada da sinopse;
6. Caso o usuário deseje, apresenta informações adicionais como ano e diretor;
7. Permite visualizar novas sugestões ou realizar uma nova pesquisa.

---

# 🏗️ Arquitetura do Sistema

```text
                 ┌───────────────────────┐
                 │       Usuário         │
                 └───────────┬───────────┘
                             │
                             ▼
                  ┌─────────────────────┐
                  │      CineBot        │
                  │ Interface Conversa  │
                  └───────────┬─────────┘
                              │
               ┌──────────────┴──────────────┐
               ▼                             ▼
     ┌──────────────────┐          ┌─────────────────────┐
     │   cinebot.pl     │          │  base_dados.pl      │
     │ Lógica do Sistema│◄────────►│ Base de Conhecimento│
     └──────────────────┘          └─────────────────────┘
               │
               ▼
      ┌────────────────────┐
      │ Motor de Inferência│
      │ Unificação         │
      │ Busca              │
      │ Backtracking       │
      └────────────────────┘
```

---

# ⚙️ Tecnologias Utilizadas

## Linguagem

- Prolog

## Ambiente de Desenvolvimento

- SWI-Prolog

## Conceitos Aplicados

- Sistemas Especialistas
- Inteligência Artificial
- Base de Conhecimento
- Motor de Inferência
- Unificação
- Backtracking
- Busca em Profundidade
- Ordenação com `findall` e `keysort`

---

# 📂 Estrutura do Projeto

```text
CineBot
│
├── cinebot.pl
├── base_dados.pl
└── README.md
```

### 📄 cinebot.pl

Responsável por toda a lógica do chatbot:

- Interface com o usuário
- Validação das entradas
- Conversão do tempo
- Busca das recomendações
- Ordenação dos filmes
- Fluxo da conversa

### 📄 base_dados.pl

Contém toda a base de conhecimento utilizada pelo sistema:

- Filmes
- Gêneros
- Duração
- Sinopses
- Ano
- Diretor

---

# 🧩 Arquitetura do Sistema Especialista

O projeto segue uma arquitetura simples e modular.

### Base de Conhecimento

Armazena os fatos referentes aos filmes.

### Motor de Inferência

Responsável por encontrar os filmes compatíveis utilizando recursos nativos do Prolog.

São utilizados principalmente:

- Unificação
- Busca
- Backtracking

### Sistema de Ordenação

As recomendações são organizadas automaticamente da melhor para a pior utilizando:

- `findall`
- `keysort`

A ordenação considera a diferença absoluta entre o tempo desejado e a duração de cada filme.

---

# ▶️ Como Executar

## 1. Instale o SWI-Prolog

Faça o download em:

https://www.swi-prolog.org/

---

## 2. Abra o terminal na pasta do projeto

Carregue o arquivo principal:

```prolog
['cinebot.pl'].
```

---

## 3. Inicie o chatbot

```prolog
cinebot.
```

---

# 💬 Guia de Uso

O SWI-Prolog possui uma sintaxe específica para entrada de dados.

## Texto

Entradas de texto devem ser informadas entre aspas simples e finalizadas com ponto.

Exemplo:

```prolog
'Laura'.
```

Outro exemplo:

```prolog
'Carlos'.
```

---

## Números

Os números também devem terminar com ponto.

Exemplo:

```prolog
5.
```

Outro exemplo:

```prolog
120.
```

---

## Fluxo da Conversa

```text
Nome
      │
      ▼
Escolha do gênero
      │
      ▼
Tempo aproximado
      │
      ▼
Busca na base de conhecimento
      │
      ▼
Recomendação
      │
      ├── Mostrar sinopse
      │
      ├── Mostrar diretor e ano
      │
      ├── Próxima recomendação
      │
      ├── Novo gênero
      │
      └── Encerrar
```

---

# 🎯 Diferenciais do Projeto

- Arquitetura modular
- Base de conhecimento separada da lógica
- Motor de inferência utilizando recursos nativos do Prolog
- Recomendações ordenadas por proximidade da duração desejada
- Interface conversacional
- Navegação entre recomendações
- Validação de entradas
- Tratamento para pesquisas sem resultados
- Implementação baseada em conceitos de Sistemas Especialistas

---

# 📚 Conceitos de Inteligência Artificial Aplicados

Durante o desenvolvimento foram utilizados conceitos clássicos de IA, como:

- Sistemas Especialistas
- Base de Conhecimento
- Inferência
- Unificação
- Backtracking
- Busca
- Representação do Conhecimento
- Recomendação baseada em regras

---

# 👨‍💻 Desenvolvedores

Projeto desenvolvido para a disciplina de **Inteligência Artificial**.

**Autores:**

- *Adicionar os nomes dos integrantes do grupo.*

---

# 📜 Licença

Este projeto possui fins exclusivamente acadêmicos e educacionais.
