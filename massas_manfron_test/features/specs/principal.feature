  #language: pt

  Funcionalidade: Validar acesso principal e menus em STG

    @valido_tela
    Cenario: Valido links do menu principal
      Dado que estou na pagina principal Massas Manfron
      E vejo e as opções de produtos "Pães"
      E vejo e as opções de produtos "Lasanhas"
      E vejo e as opções de produtos "Empadões"

    @valido_tela
    Cenario: Valido cards de produtos
      Dado que estou na pagina principal Massas Manfron
      E clico a opção de produtos "Pães"
      E clico a opção de produtos "Lasanhas"
      E clico a opção de produtos "Empadões"

    @valido_login
    Cenario: Valido acesso ao login
      Dado que estou na pagina principal Massas Manfron
      E vejo e as opções de produtos "Pães"
      E vejo e as opções de produtos "Lasanhas"
      E vejo e as opções de produtos "Empadões"
      E clico em login
      E visualizo a tela de login
      E clico em criar conta
      E vou para tela de cadastro
      E preencho E-mail "loannvitor"
      E insiro o Nome completo  "Loann Vitor Marques de Oliveira"
      E coloco a Data de nascimento "24/03/2004"
      E insiro o CPF "10139207910"
      E preeencho o Telefone "41998634188"
      E coloco o CEP "82700-380"
      E informo o bairo "Barreirinha"
      E coloco o endereço "Rua dos Ipês Número 201"
      Quando marco aceite aos termos e condições
      Então registro as informações

    @valido_perfil
    Cenario: Valido tela de perfil
      Dado que estou na pagina Perfil usuário
      E vejo o texto "Seus dados"
      E exibe E-mail "loannvitor"
      E exibe o Nome completo  "Loann Vitor Marques de Oliveira"
      E exibe a Data de nascimento "24/03/2004"
      E exibe o CPF "10139207910"
      E exibe o Telefone "(41) 99863-4188"
      E exibe o CEP "82700-380"
      E exibe o bairo "Barreirinha"
      E exibe o endereço "Rua dos Ipês Número 201"
      E Alterar dados cadastrados

    @valido_tela_de_cadasatro_de_produto
    Cenario: Valido tela de cadastro de produto
      Dado que estou na pagina Cadastro produto
      E vejo o texto "Cadastre o produo"
      E preencho o Nome do produto "Lasanha Bolonhesa"
      E informo a Categoria do produto "Lasanha"
      E escrevo a Quantidade "20"
      E preencho Senha "123456789"
      E clico em Cadastrar



