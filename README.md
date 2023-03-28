# EduSynch Challenge 2023 (QA) 

### Tecnologias

- Framework: Ruby + Cucumber

## Instalação e Configuração 

### Instalação Ruby

Realizar o download do Ruby + Devkit através do link: [Ruby](<https://rubyinstaller.org/downloads/>) 

### Instalação do JAVA JDK

Realizar o download da versão recomendada através do link: [JAVA JDK](<https://www.oracle.com/java/technologies/downloads/#jdk20-windows>).


Após instalado adicionar em variáveis de ambiente JAVA_HOME, [guia de configuração](https://confluence.atlassian.com/confbr1/configurando-a-variavel-java_home-no-windows-933709538.html)

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