#language: pt

Funcionalidade: Consultar endpoint de retorno de informações de usuário

@teste1
Cenário: Validar endpoint de retorno de informações de usuário esperando status code 200
    Quando realizar a consulta no endpoint de informações de usuário
    Então deve retornar o status code 200

@teste2
Cenário: Validar endpoint de retorno de informações de usuário se o primeiro id retornado é o número 1
    Quando realizar a consulta no endpoint de informações de usuário
    Então deve retornar o status code 200
    E o primeiro número retornado é igual a 1

@teste3
Cenário: Validar se o tipo do campo name é String
    Quando realizar a consulta no endpoint de informações de usuário
    Então deve retornar o status code 200
    E o campo name deve ser do tipo String