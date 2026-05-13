#language:pt
Funcionalidade: Cadastrar novo entregador para o Buger Eats
    @success
    Esquema do Cenário: Cadastro de um novo entregador na plataforma com sucesso
        Dado Está na tela principal do sistema
        E Clicar no botão "Cadastre-se para fazer entregas"
        Quando Preenche o formulario de Cadastro
        E Envia a imagem da cnh
        Então Deve ser exibido uma mensagem de sucesso "<result>"

    Exemplos:
    |name |cpf        |email          |phone      |cep     |number|complement|delivery_method|result                                                                                             |
    |Teste|00000014141|teste@gmail.com|11982548514|02415002|1969  |apto 32A  |Moto           |Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.|

    @failure @cpf @name @number
    Esquema do Cenário: Cadastro de um novo entregador na plataforma com dados inválidos
        Dado Está na tela principal do sistema
        E Clicar no botão "Cadastre-se para fazer entregas"
        Quando Preenche o formulario de Cadastro
        E Envia a imagem da cnh
        Então Deve ser exibido uma mensagem de erro "<result>"

    Exemplos:
    |name |cpf        |email          |phone      |cep     |number|complement|delivery_method|result                                    |
    |Teste|abcdefjl   |teste@gmail.com|11982548514|02415002|1969  |apto 32A  |Moto           |Oops! CPF inválido                        |
    |     |00000014141|teste@gmail.com|11982548514|02415002|1969  |apto 32A  |Bicicleta      |É necessário informar o nome              |
    |Teste|00000014141|teste@gmail.com|11982548514|02415002|      |apto 32A  |Van/Carro      |É necessário informar o número do endereço|
   
   
    
  
  @failure @email @popup
    Esquema do Cenário: Cadastro de um novo entregador na plataforma com email inválido
        Dado Está na tela principal do sistema
        E Clicar no botão "Cadastre-se para fazer entregas"
        Quando Preenche o formulario de Cadastro
        E Envia a imagem da cnh
        Então Deve ser exibido uma mensagem popup de erro "<result>"

    Exemplos:
    |name |cpf        |email          |phone      |cep     |number|complement|delivery_method|result                                    |
    |Teste|00000014141|teste          |11982548514|02415002|1969  |apto 32A  |Moto           |Inclua um "@" no endereço de e-mail. "teste" está com um "@" faltando.|
    

