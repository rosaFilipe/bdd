#language:pt

Funcionalidade: Login do saucedemo

Contexto:  
    Dado que eu acesse o site https://www.saucedemo.com/v1/

Cenário: Login válido
    Quando eu informo o usuário válido
    E a senha válida 
    E confirmar
    Então exibe "Products"

Esquema de Cenário: Falha no login 
    Quando eu informo o <usuário>
    E a <senha>
    E clico no botão login
    Então exibe a mensagem <mensagem>
    Exemplos:
    | usuário          | senha          | mensagem                                                                    |
    | usuário inválido | senha válida   | "Epic sadface: Username and password do not match any user in this service" |
    | usuário válido   | senha inválida | "Epic sadface: Username and password do not match any user in this service" |
    | usuário bloqueado| senha          | "Epic sadface: Sorry, this user has been locked out"                        |
    | ""               | senha          | "Epic sadface: Username is required"                                        |
    | usuário          | ""             | "Epic sadface: Password is required"                                        |
    | ""               | ""             | "Epic sadface: Username is required"                                        |

# //Cenário: Login com usuário inválido
#     Quando eu informo o usuário inválido
#     E a senha válida 
#     E confirmar
#     Então exibe a mensagem "Epic sadface: Username and password do not match any user in this service"

# //Cenário: Login com senha inválida
#     Quando eu informo o usuário válido
#     E a senha inválida
#     E clico no botão login
#     Então exibe a mensagem "Epic sadface: Username and password do not match any user in this service"
    
# //Cenário: Login com usuário bloqueado
#     Quando eu informo o usuário bloqueado
#     E a senha 
#     E clico no botão login
#     Então exibe a mensagem "Epic sadface: Sorry, this user has been locked out"

# //Cenário: Login com campo de nome de usuário vazio
#     Quando eu informo a senha 
#     E clico no botão login
#     Então exibe a mensagem "Epic sadface: Username is required"

# //Cenário: Login com campo de senha vazio
#     Quando eu informo o usuário
#     E clico no botão login
#     Então exibe a mensagem "Epic sadface: Password is required"

# //Cenário: Login com os campos de nome de usuário e senha vazios
#     Quando eu clico no botão login
#     Então exibe a mensagem "Epic sadface: Username is required"
