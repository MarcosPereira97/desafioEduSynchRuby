    #language: pt

Funcionalidade: Realizar a prova CEFR Reading Test e verificar resultados

    Contexto: Acessar plataforma da prova
        Dado que acesso a plataforma EduSynch
        Quando realizo login utilizando credenciais válidas

    @cenario
    Cenário: CEFR Reading Test with Certificate
        Dado efetuo os procedimentos necessarios para realizar a prova
        Quando respondo as perguntas
        E acesso a tela de analise
        Então tenho acesso ao certificado
            