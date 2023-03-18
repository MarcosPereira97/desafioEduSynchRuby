#language: pt

Funcionalidade: Realizar a prova CEFR Reading Test e verificar resultados

    Contexto: Acessar plataforma da prova
        Dado que acesso a plataforma EduSynch
        
        @cenario
        Cenário: Sucesso
            Dado realizo o login com <usuario> e <senha>
            Quando realizo a prova 
            Então verifico o resultado

                Exemplos:
                    | usuario               | senha     |
                    | "qatest@edusynch.com" | "qa12345" |