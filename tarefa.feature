#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no meu carrinho.

Esquema do Cenário: Seleção de cor, tamanho e quantidade
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu selecionar um <produto>
E escolher <cor>, <tamanho> e <quantidade>
Então deve exibir uma <mensagem> de item obrigatório

Exemplos:
produto | cor      | tamanho | quantidade | mensagem
"blusa" | "branco" | "M"     | "2"        | "Item obrigatório"
"calça" | "preto"  | "G"     | "3"        | "Item obrigatório"
"casaco"| "azul"   | "P"     | "1"        | "Item obrigatório"

Cenário: Quantidade de produto por venda
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu selecionar um "produto"
E selecionar a "quantidade"
Então deve aparecer a mensagem "Máximo 10 produtos por venda".

Cenário: Voltar ao estado original
Dado que eu acesse o catálogo de compras da EBAC-SHOP
Quando eu "desistir" da compra
E clicar no botão "limpar"
Então deve "voltar" ao estado inicial

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Dado que eu acesse minha conta no portal EBAC-SHOP
Quando eu digitar o usuário "shanara@ebac.com.br"
E a senha "sha2022"
Então abrirá a tela de "Checkout"

Dado que eu acesse minha conta no portal EBAC-SHOP
Quando eu digitar o usuário "shanara@ebac.com.br"
E a senha "sha222"
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Funcionalidade: Tela de Cadastro - Checkout
Como cliente da EBAC-SHOP
Quero concluir meu Cadastro
Para finalizar minha compra

Dado que eu acesse a tabela de cadastro com as seguintes informações:

Nome| Sobrenome| País| Endereço| Cidade| CEP| Telefone| Endereço de e-mail
"Maria"| "da Silva"| "Brasil"| "Rua Chile"| "Indaial"| "89130-000"| "(47) 998877700" | "mariadasilva@ebac.com.br"
"João"| "dos Santos"| "Brasil"| "Rua Equador"| "Indaial"| "89130-000"| "(47) 993324455" | "joao@ebac.com.br"
"Aline"| "da Veiga"| "Brasil" | "Rua Porto Alegre" | "Indaial" | "89130-000" | "(47) 997763322" | "aline22@ebac.com.br"

Quando eu inserir as informações obrigatórias
Então deve exibir uma mensagem: "Cadastro efetuado com sucesso"

Dado que eu acesse a tabela de cadastro com as seguintes informações:

Nome| Sobrenome| País| Endereço| Cidade| CEP| Telefone| Endereço de e-mail
"Maria"| "da Silva"| "Brasil"| "Rua Chile"| "Indaial"| "89130-000"| "(47) 998877700" | "mariadasilva@ebac.com.br"
"João"| "dos Santos"| "Brasil"| "Rua Equador"| "Indaial"| "89130-000"| "(47) 993324455" | "joao@ebac.com.br"
"Aline"| "da Veiga"| "Brasil" | "Rua Porto Alegre" | "Indaial" | "89130-000" | "(47) 997763322" | "aline22@ebac.com.br"

Quando eu inserir um e-mail inválido
Então deve exibir uma mensagem de erro: "E-mail inválido"

Dado que eu acesse a tabela de cadastro com as seguintes informações:

Nome| Sobrenome| País| Endereço| Cidade| CEP| Telefone| Endereço de e-mail
"Maria"| "da Silva"| "Brasil"| "Rua Chile"| "Indaial"| "89130-000"| "(47) 998877700" | "mariadasilva@ebac.com.br"
"João"| "dos Santos"| "Brasil"| "Rua Equador"| "Indaial"| "89130-000"| "(47) 993324455" | "joao@ebac.com.br"
"Aline"| "da Veiga"| "Brasil" | "Rua Porto Alegre" | "Indaial" | "89130-000" | "(47) 997763322" | "aline22@ebac.com.br"

Quando algum campo obrigatório estiver vazio
Então deve exibir uma mensagem de alerta: "Preencha os itens obrigatórios"
