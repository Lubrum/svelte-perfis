# Svelte Perfis

![Svelte](https://img.shields.io/badge/Svelte-Frontend-orange?logo=svelte)
![TypeScript](https://img.shields.io/badge/TypeScript-5-blue?logo=typescript)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

Aplicação web desenvolvida com **Svelte** para exibição e gerenciamento de **perfis de usuários**.

O projeto demonstra conceitos fundamentais de desenvolvimento frontend com Svelte, incluindo **componentização, manipulação de estado e comunicação entre componentes**.

---

# Tecnologias utilizadas

* Svelte
* TypeScript
* HTML
* CSS
* Node.js
* Vite

---

# Funcionalidades

* Visualização de perfis
* Componentização da interface
* Atualização dinâmica da interface
* Estrutura modular com componentes Svelte

---

# Arquitetura da aplicação

```
Browser
   |
   v
Svelte Components
   |
   v
Application State
```

A interface é composta por componentes reutilizáveis que controlam o estado da aplicação e atualizam a interface automaticamente.

---

# Como executar o projeto

## 1 - Clonar o repositório

```bash
git clone https://github.com/Lubrum/svelte-perfis.git
cd svelte-perfis
```

---

## 2 - Instalar dependências

```bash
npm install
```

---

## 3 - Executar em ambiente de desenvolvimento

```bash
npm run dev
```

A aplicação ficará disponível em:

```
http://localhost:5173
```

---

# Validação

```bash
npm run check
npm run build
```

---

# Build para produção

```bash
npm run build
```

Para pré-visualizar o build localmente:

```bash
npm run preview
```

---

# Docker

```bash
docker build -t svelte-perfis .
docker run --rm -p 8080:80 svelte-perfis
```

---

# Estrutura do projeto

```
src
 ├── components
 ├── interfaces
 ├── requisicoes
 ├── utils
 ├── App.svelte
 └── main.ts
```

---

# Objetivo do projeto

Este projeto foi desenvolvido para explorar conceitos importantes do ecossistema **Svelte**, incluindo:

* criação de componentes
* organização de aplicações frontend
* gerenciamento de estado
* atualização reativa da interface

---

# Autor

Luciano Brum

GitHub
https://github.com/Lubrum

Website
https://lubrum.github.io

---

# Licença

Este projeto está licenciado sob a **MIT License**.
