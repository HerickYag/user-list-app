# Projeto Flutter: Lista de Contatos

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)

## 📝 Descrição do Projeto

Este é um aplicativo desenvolvido em **Flutter** como parte de um exercício acadêmico. O objetivo principal do projeto é demonstrar a construção de uma interface de usuário que consome dados de uma API REST, exibe esses dados em uma lista e permite a visualização de detalhes de cada item. O projeto também inclui a integração com o **Firebase**.

Este trabalho foi realizado como atividade para a disciplina ministrada pelo professor **Renato Montanher**.

## Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/HerickYag/user-list-app/refs/heads/main/Tela%20da%20Listagem.png" width="250" alt="Tela de Lista">
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://raw.githubusercontent.com/HerickYag/user-list-app/refs/heads/main/Tela%20de%20Detalhes.png" width="250" alt="Tela de Detalhes">
</p>

## ✨ Funcionalidades

-   **Lista de Contatos:** Exibe uma lista de usuários carregada a partir da API pública [JSONPlaceholder](https://jsonplaceholder.typicode.com/users).
-   **Visual Moderno:** A interface utiliza Cards e Ícones para uma apresentação mais amigável e organizada.
-   **Tela de Detalhes:** Ao tocar em um contato, uma nova tela é aberta mostrando informações detalhadas como nome de usuário, email, cidade e empresa.
-   **Integração com Firebase:** O projeto está configurado e vinculado a um projeto no Firebase.
-   **Tema Material 3:** O aplicativo utiliza o sistema de design mais recente do Google, o Material 3.

## 🛠️ Tecnologias e Pacotes Utilizados

-   **Flutter:** Framework principal para o desenvolvimento da interface.
-   **Dart:** Linguagem de programação utilizada.
-   **`http` package:** Para realizar as chamadas HTTP para a API REST.
-   **`firebase_core`:** Pacote para inicializar a conexão com o Firebase.

## 🚀 Como Executar o Projeto

Para rodar este projeto localmente, siga os passos abaixo:

1.  **Pré-requisitos:**
    -   Ter o [SDK do Flutter](https://flutter.dev/docs/get-started/install) instalado.
    -   Ter um editor de código como o VS Code com as extensões do Flutter.

2.  **Clonar o Repositório:**
    ```bash
    git clone [https://github.com/HerickYag/user-list-app.git](https://github.com/HerickYag/user-list-app.git)
    ```

3.  **Acessar a Pasta do Projeto:**
    ```bash
    cd user-list-app
    ```

4.  **Instalar as Dependências:**
    ```bash
    flutter pub get
    ```

5.  **Executar o Aplicativo:**
    ```bash
    flutter run
    ```

## 👨‍💻 Autor

-   **Herick Mesquita** - [HerickYag](https://github.com/HerickYag)
