# EduSynch Challenge 2023 (QA) 

### Tecnologias

- Framework: Ruby + Cucumber

## Instalação e Configuração 

### Instalação Ruby

Realizar o download do Ruby + Devkit através do link: 

- [Ruby](<https://rubyinstaller.org/downloads/>) 

### Instalação do JAVA JDK

Realizar o download da versão recomendada através do link: 

- [JAVA JDK](<https://www.oracle.com/java/technologies/downloads/#jdk20-windows>).

### ChromeDriver

Realizar o download do chromedriver, navegador utilizado ao executar o teste automtizado. 

- [Chromedriver](<https://chromedriver.chromium.org/downloads>)

Após realizar o download e instalação de todos os itens citados acima, adicionar no PATH do computador dentro de Variáveis do Sistema o caminho onde se encotra o Chromedriver e também JAVA_HOME. Abaixo estou deixando um guia caso ocorra alguma dúvida.

 - [Guia de Configuração](<https://confluence.atlassian.com/confbr1/configurando-a-variavel-java_home-no-windows-933709538.html>)

## Executando os testes

Após tudo instalado e precisamos instalar as dependências utilizadas no projeto, e para realizar isso basta rodar os comandos abaixos:

```Bash
gem install bundler
```
```Bash
bundle install
```

Para executar o teste rode o comando abaixo no terminal:

```Bash
cucumber -t @cenario
```

>This is a challenge by [EduSynch](<https://edusynch.com/>)
