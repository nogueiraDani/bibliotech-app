# 📖 BiblioTech

O BiblioTech é um sistema de gerenciamento de bibliotecas desenvolvido com Java (Spring Boot) no backend e Angular no frontend. O objetivo do projeto é facilitar o cadastro de livros, autores, clientes e empréstimos, além de fornecer funcionalidades avançadas como notificações e consultas personalizadas.

## 🚧 Status do Projeto

O **BiblioTech** está em desenvolvimento ativo. Abaixo está o progresso atual:

### 💻 Backend
- [x] Configuração inicial do Spring Boot.
- [x] Criação da estrutura do projeto (controller, service, repository, entity, config).
- [x] Configuração do banco de dados PostgreSQL e Flyway para migrações.
- [ ] Implementação do CRUD de Livros.
- [ ] Implementação do CRUD de Autores.
- [ ] Implementação do CRUD de Clientes.
- [ ] Gerenciamento de Empréstimos.
- [ ] Integração com RabbitMQ para notificações.
- [ ] Autenticação e autorização com OAuth2 e JWT.
- [ ] Documentação da API com Swagger/OpenAPI.

### 🖥️ Frontend
- [x] Configuração inicial do Angular.
- [ ] Desenvolvimento das telas de listagem e cadastro de livros.
- [ ] Desenvolvimento das telas de empréstimos e histórico.
- [ ] Integração completa com a API backend.

### ⚙️ Infraestrutura
- [x] Configuração do Docker para containerização do backend.
- [ ] Configuração do Kubernetes para orquestração de containers.
- [ ] Configuração do CI/CD com GitHub Actions.
- [ ] Configuração do monitoramento com Prometheus e Grafana.

### ⏳ Próximos Passos
1. Implementar o CRUD de Livros, Autores e Clientes no backend.
2. Implementar o serviço de empréstimos e notificações.
3. Desenvolver as telas do frontend para listagem e cadastro de livros.
4. Subir o projeto na cloud (AWS ou Heroku).
5. Adicionar paginação e filtros nas consultas.

## ⚙️ Funcionalidades
#### Backend (Spring Boot)
- Cadastro de Livros: Cadastro, edição, exclusão e consulta de livros.
- Cadastro de Autores: Cadastro, edição, exclusão e consulta de autores.
- Cadastro de Clientes: Cadastro, edição, exclusão e consulta de clientes.
- Gerenciamento de Empréstimos: Realização, devolução e consulta de empréstimos.
- Notificações: Envio de notificações por email ou SMS quando um empréstimo é realizado.
- Segurança: Autenticação e autorização com OAuth2 e JWT.
- Documentação da API: Documentação automática com Swagger/OpenAPI.

#### Frontend (Angular)
- Interface Responsiva: Design moderno e responsivo para dispositivos móveis e desktop.
- Consulta de Livros: Listagem e busca de livros disponíveis.
- Gerenciamento de Empréstimos: Interface para realizar e devolver empréstimos.
- Histórico de Empréstimos: Visualização do histórico de empréstimos por cliente.



## 🛠️ Tecnologias Utilizadas
#### Backend
- Java 23: Linguagem de programação principal.
- Spring Boot: Framework para desenvolvimento de APIs REST.
- Spring Data JPA: Para integração com o banco de dados.
- Spring Security: Para autenticação e autorização.
- Flyway: Para gerenciamento de migrações do banco de dados.
- RabbitMQ: Para comunicação assíncrona entre microserviços.
- PostgreSQL: Banco de dados relacional.
- Swagger/OpenAPI: Para documentação da API.

#### Frontend
- Angular 19: Framework para desenvolvimento da interface do usuário.
- Angular Material: Biblioteca de componentes UI.
- RxJS: Para programação reativa.
- HttpClient: Para consumo da API backend.

#### Infraestrutura
- Docker: Para containerização da aplicação.
- Kubernetes: Para orquestração de containers em produção.
- Prometheus + Grafana: Para monitoramento de métricas.
- GitHub Actions: Para CI/CD.


## 🗂️ Estrutura do Projeto
### Backend
```bash
bibliotech-backend/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── bibliotech/
│   │   │           ├── config/
│   │   │           ├── controller/
│   │   │           ├── dto/
│   │   │           ├── entity/
│   │   │           ├── repository/
│   │   │           └── service/
│   │   └── resources/
│   │       ├── application.yml
│   │       └── db/migration/
│   └── test/
├── pom.xml
└── .gitignore
```
### Frontend
```bash
bibliotech-frontend/
├── src/
│   ├── app/
│   │   ├── components/
│   │   ├── services/
│   │   ├── models/
│   │   └── app.module.ts
│   ├── assets/
│   ├── environments/
│   └── styles.css
├── angular.json
├── package.json
└── .gitignore
```

## 🚀 Como Executar o Projeto
- Pré-requisitos: Java 23.
- Maven: Instale o Maven para gerenciamento de dependências.
- Node.js: Instale o Node.js (versão LTS recomendada).
- Angular CLI: Instale o Angular CLI globalmente (npm install -g @angular/cli).
- Docker: Instale o Docker para rodar os containers.
- PostgreSQL: Instale o PostgreSQL ou use um container Docker.

### Backend
Clone o repositório:
```bash
git clone https://github.com/seu-usuario/bibliotech-backend.git
```
Navegue até a pasta do projeto:

```bash
cd bibliotech-backend
```
Configure as variáveis de ambiente no arquivo application.yml ou use variáveis de ambiente:

```yaml
spring:
  datasource:
    url: jdbc:postgresql://localhost:5432/bibliotech
    username: seu_usuario
    password: sua_senha
```
Execute o projeto com Maven:

```bash
mvn spring-boot:run
```
Acesse a documentação da API em: http://localhost:8080/swagger-ui.html.

### Frontend
Clone o repositório:

```bash
git clone https://github.com/seu-usuario/bibliotech-frontend.git
```
Navegue até a pasta do projeto:

```bash
cd bibliotech-frontend
```
Instale as dependências:

```bash
npm install
```
Execute o projeto:

```bash
ng serve
```
Acesse a aplicação em: http://localhost:4200.

## 💡 Contribuição
Contribuições são bem-vindas! Siga os passos abaixo para contribuir:

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (git checkout -b feature/nova-feature).
3. Faça commit das suas alterações (git commit -m 'Adiciona nova feature').
4. Faça push para a branch (git push origin feature/nova-feature).
5. Abra um Pull Request.

## 📜 Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.


## 🙏 Agradecimentos
Agradeço à comunidade de desenvolvedores por todas as bibliotecas e ferramentas incríveis que tornaram este projeto possível.

---

Feito com 💜 por [Daniela Nogueira Rampim](https://github.com/nogueiraDani)