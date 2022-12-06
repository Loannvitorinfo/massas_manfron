# Steps geneŕicos para serem chamados nos testes.


Quando('informo meu login e senha') do |table|
  @usuario = table.rows_hash
  @login.faz_login(@usuario[:login], @usuario[:loja], @usuario[:senha])
end

Dado('que estou na pagina principal Massas Manfron') do
  @login.acessar
end

Dado('vejo e as opções de produtos {string}') do |btn|
  @btn = btn
  search_form = find('.btn-menu', :text => @btn).click
  sleep 0.1.to_i
  sleep 2
end

Dado('clico a opção de produtos {string}') do |card|
  @card = card
  search_form = find('.card-title', :text => @card).click
  search_form = click_button 'Experimente agora'
  # search_form = find(:xpath, '//input[@name="Experimente agora"]').set login
  search_form = find(:xpath, '//a[text()="Experimente agora"]').click
  sleep 1
  # search_form = find('.btn-primary', :text => ` agora`)
  sleep 0.1.to_i
end

Dado('clico em login') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('visualizo a tela de login') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('clico em criar conta') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('vou para tela de cadastro') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('preencho E-mail {string}') do |mail|
  search_form = find(:xpath, '//*[@id="email"]').set mail
end

Dado('insiro o Nome completo  {string}') do |nome|
  search_form = find(:xpath, '//*[@id="name"]"]').set nome
end

Dado('coloco a Data de nascimento {string}') do |diaa|
  search_form = find(:xpath,'//*[@id="diaa"]'). set diaa
end

Dado('insiro o CPF {string}') do |cpf|
  search_form = find(:xpath,'//*[@id="register-fomr"]/div[4]/input'). set cpf
end

Dado('preeencho o Telefone {string}') do |telefone|
  search_form = find(:xpath, '//*[@id="register-fomr"]/div[5]/input'). set telefone
end

Dado('coloco o CEP {string}') do |cep|
  search_form = find(:xpath, '//*[@id="register-fomr"]/div[6]/input'). set cep
end

Dado('informo o bairo {string}') do |bairro|
  search_form = find(:xpath, '//*[@id="bairro"]'). set bairro
end

Dado('coloco o endereço {string}') do |endereço|
  search_form = find(:xpath, '//*[@id="endereço"]').set endereço
end

Quando('marco aceite aos termos e condições') do
  search_form = find(:xpath, '//*[@id="agreement"]').click
end

Então('registro as informações') do
  search_form = find(:xpath, '//*[@id="btn-submit"]').click
end

Dado('que estou na pagina Perfil usuário') do
  search_form = find(:xpath, '//*[@id="main-container"]/h1')
end

Dado('vejo seus dados') do
  search_form = find(:xpath, '//*[@id="main-container"]/h1')
end

Dado('exibe E-mail {string}') do |email|
  @email = email
  search_form = find(:xpath, '//*[@id="email"]', :text => @email)
end

Dado('exibe o Nome completo  {string}') do |nome|
  @nome = nome
    search_form = first(:xpath, '//*[@id="name"]', :text => @nome)
end

Dado('exibe a Data de nascimento {string}') do |diaa|
  @diaa = diaa
  search_form = first(:xpath, '//*[@id="diaa"]', :text => @diaa)
end

Dado('exibe o CPF {float}.{int}-{int}') do |cpf|
  @cpf = cpf
  search_form = first(:xpath, '//*[@id="register-fomr"]/div[4]/input', :text=> @cpf)
end

Dado('exibe o Telefone {string}') do |tel|
  @tel = tel
  search_form = first('//*[@id="register-fomr"]/div[5]/input', :text => @tel)
end

Dado('exibe o CEP {string}') do |cep|
  @cep = cep
  search_form = first('//*[@id="register-fomr"]/div[6]/input', :text => @cep)
end

Dado('exibe o bairo {string}') do |bairro|
  @bairro = bairro
  search_form = first('//*[@id="bairro"]', :text => @bairro)
end

Dado('exibe o endereço {string}') do |endereço|
  @endereço = endereço
  search_form = first('//*[@id="endereço"]', :text => @endereço)
end

Dado('Alterar dados cadastrados') do
  search_form = find('//*[@id="btn-submit"]').click
end

Dado('que estou na pagina Cadastro de produto') do
  search_form = find(:xpath, '//*[@id="main-container"]/h1')
end

Dado('preencho o Nome do produto {string}') do |nome|
  @nome = nome
  search_form = find('//*[@id="name"]', :text => @nome)
end

Dado('informo a Categoria do produto {string}') do |produto|
  @produto = produto
  search_form = find('//*[@id="name"]', :text => @produto)
end

Dado('escrevo a Quantidade {string}') do |number|
  @number = number
  search_form = find('//*[@id="number"]', :text => @number)
end





# Dado("que eu acesso o site") do
#   @login.acessar
# end
#
# Quando("preencho os dados de login com:") do |table|
#   @usuario = table.rows_hash
#   @login.faz_login(@usuario[:login], @usuario[:loja],@usuario[:senha])
#   sleep 0.1.to_i
# end
#
# Quando('clico Entrar') do
#   search_form = click_button 'Entrar'
#   sleep 0.1.to_i
#   sleep 8
# end
#
# Quando('clico Fechar') do
#   search_form = click_button 'Fechar'
#   sleep 0.1.to_i
# end
#
# Quando("clico Buscar") do
#   search_form = click_button 'Buscar'
#   sleep 0.1.to_i
# end
#
# Quando("clico Limpar") do
#   search_form = click_button 'Limpar'
#   sleep 0.1.to_i
# end
#
# Quando("clico atualizar") do
#   search_form = click_button 'Atualizar'
#   sleep 0.1.to_i
# end
#
# Quando("clico Aplicar") do
#   search_form = click_button 'Aplicar'
#   sleep 0.1.to_i
# end
#
# Quando("clico OK") do
#   search_form = click_button 'OK'
#   sleep 0.1.to_i
# end
#
# Quando('clico pesquisar') do
#   search_form = click_button 'Pesquisar'
#   sleep 0.1.to_i
# end
#
# Quando('clico Avançar') do
#   search_form = click_button 'Avançar'
#   # search_form = find('.mat-button-wrapper', :text => 'Avançar').click
#   sleep 0.1.to_i
# end
#
# Quando('clico Enviar') do
#   search_form = find('.mat-button-wrapper', :text => 'Enviar').click
#   sleep 0.1.to_i
# end
#
# Então("carrega aviso sessão expirada") do
#   open_sessao_expirada
#   sleep 0.1.to_i
# end
#
# ## grupo de mensagens padrãoes
#
# Então("exibe a mensagem de sucesso {string}") do |mensagem_sucesso_2|
#   @mensagem_sucesso_2 = mensagem_sucesso_2
#   # find(:xpath,'//div/i["text=()"]', :text => @mensagem_sucesso_2)
#   find('.data', :text => @mensagem_sucesso_2)
# end
#
# Então("exibe a mensagem {string}") do |mensagem_sucesso|
#   @mensagem_sucesso = mensagem_sucesso
#   find('.alert-success', :text => @mensagem_sucesso).click
#   sleep 0.1.to_i
# end
#
# Então("exibe a mensagem de alerta {string}") do |mensagem_alerta|
#   @mensagem_alerta = mensagem_alerta
#   find('.cam-alert-title', :text => @mensagem_alerta).click
#   sleep 0.1.to_i
# end
#
# Então("clico em Voltar") do
#   find(:xpath,'/html/body/table[3]/tbody/tr/td/div[2]/p[2]/b[1]/font/a').click
#   sleep 0.1.to_i
# end
#
# Então("exibe a mensagem de erro {string}") do |mensagem_erro|
#   @mensagem_erro = mensagem_erro
#   find('.help-block ', :text => mensagem_erro).click
#   sleep 0.1.to_i
# end
#
# Então("exibe detalhes da mensagem {string}") do |mensagem_erro_detalhe|
#   @mensagem_erro_detalhe = mensagem_erro_detalhe
#   search_form = click_button 'Detalhar'
#   find('.mb-2', :text => mensagem_erro_detalhe).click
#   sleep 0.1.to_i
# end
#
# Então("exibe mensagem alerta de já cadastrado {string}") do |mensagem_aviso|
#   @mensagem_aviso = mensagem_aviso
#   find('.cam-modal-body', :text => @mensagem_aviso).click
#   sleep 0.1.to_i
# end
#
# Então("exibe resultado {string}") do |mensagem_retorno|
#   @mensagem_retorno = mensagem_retorno
#   first('.ng-star-inserted', :text => @mensagem_retorno)
#   sleep 0.1.to_i
# end
#
# Então("retorna dados da empresa {string} com cnpj {string}") do |nome_empresa, cnpj_empresa|
#   @nome_empresa = nome_empresa
#   @cnpj_empresa = cnpj_empresa
#   first('.bold-cell', :text => @nome_empresa)
#   first('.bold-cell', :text => @cnpj_empresa)
#   sleep 0.1.to_i
# end
#
# Entao("realizo logout do sistema") do
#   # open_logou_system
#   search_form = find(:xpath, '//*[@id="menu-"]/ul[1]/li[5]/a').click
#   sleep 0.1.to_i
# end
#
# Quando("exibe tela de autenticação") do
#   search_form = find(:xpath, '//h1[text()="Seja bem-vindo ao portal"]')
#   sleep 0.1.to_i
# end
#
#
#
# Quando("acesso Menu principal {string}") do |menus_princ|
#   @menus_princ = menus_princ
#   #search_form = find('.example-app-name').double_click
#   search_form = find(:xpath,'//ul/li/a/span[text()]', :text => @menus_princ).click
#   sleep 0.1.to_i
# end
#
# Quando("acesso Menu {string}") do |menus|
#   @menus = menus
#   search_form = first('.ng-binding', :text => @menus).click
#   sleep 0.1.to_i
# end
#
# Quando("clico Inserir NFS-e") do
#   search_form = find('.mat-button-wrapper', :text => 'Inserir NFS-e').click
#   sleep 0.1.to_i
# end
#
# Quando("acesso submenu {string}") do |submenu|
#   @submenu = submenu
#   search_form = first('.mat-menu-item', :text => @submenu).hover
#   sleep 0.1.to_i
# end
#
# Quando("exibe a tela {string}") do |carre_tela|
#   @carre_tela = carre_tela
#   search_form = first(:xpath,'//tbody/tr/td[text()]', :text => @carre_tela)
# #  search_form = first(:xpath, '//tbody/tr/td[text()]', :text => @carre_tela).click
#   sleep 0.1.to_i
# end
#
# Quando("carrego a tela Notificação") do
#   search_form = find(:xpath, '//span[text()="Notificação"]').click
#   sleep 0.1.to_i
# end
#
# Quando("clico Filtro") do
#   search_form = find('.mat-expansion-panel-header-title', :text => 'Filtro').click
#   sleep 1.1.to_i
# end
#
# Quando("preencho Empresa Filial {string}") do |organization|
#   @organization = organization
#   search_form = find('input[id="organization-filter"]').set organization
#   search_form = find('.fa-search').click
#   sleep 0.1.to_i
#   sleep 10
# end
#
# Quando("preencho Nome da empresa {string}") do |nome_empresa|
#   @nome_empresa = nome_empresa
#   search_form = find('input[id="name-filter"]').set @nome_empresa
#   sleep 0.1.to_i
# end
#
# Quando("preencho Inscrição Municipal com valor {string}") do |rps_city_registration|
#   @rps_city_registration = rps_city_registration
#   search_form = find('input[id="rps-city-registration"]').set rps_city_registration
#   sleep 0.1.to_i
# end
#
# Quando("seleciono tipo Tomador {string} número {string}") do |tipo_doc, num_doc|
#   @tipo_doc = tipo_doc
#   @num_doc = num_doc
#   first('.mat-select').click
#   search_form = find('.mat-option-text', :text => @tipo_doc).click
#   search_form = find('input[id="documentNumber-filter"]').set @num_doc
#   sleep 0.1.to_i
# end
#
# Quando("seleciono tipo Tomador 2 {string} número {string}") do |tipo_doc, num_doc|
#   @tipo_doc = tipo_doc
#   @num_doc = num_doc
#   first('.mat-select').click
#   search_form = find('.mat-option-text', :text => @tipo_doc).click
#   search_form = find('input[id="taker-filter"]').set @num_doc
#   sleep 0.1.to_i
# end
#
# Quando("preencho Código do Município {string}") do |rps_city_registration|
#   @rps_city_registration = rps_city_registration
#   search_form = find('input[id="rps-city-registration"]').set @rps_city_registration
#   sleep 0.1.to_i
# end
#
# Quando("preencho Tipo do Documento {string}") do |tipo_doc|
#   @tipo_doc = tipo_doc
#   search_form = find(:xpath, '//*[@id="doc-type"]/div/div[2]/div').click
#   search_form = find('.mat-option-text', :text => @tipo_doc).click
#   sleep 0.1.to_i
# end
#
# Quando("preencho Número do RPS {string}") do |rps_number_filter|
#   @rps_number_filter = rps_number_filter
#   search_form = find('input[id="rps-number-filter"]').set @rps_number_filter
#   sleep 0.1.to_i
# end
#
# Quando("Emissão do RPS de {string}") do |dt_emissao_1|
#   @dt_emissao_1 = dt_emissao_1
#   search_form = first(:xpath, '//input[@data-placeholder="Escolher data"]')
#   search_form = find('input[data-mat-calendar="mat-datepicker-2"]').set @dt_emissao_1
#   sleep 0.1.to_i
# end
#
# Quando("Emissão do RPS até {string}") do |dt_emissao_2|
#   @dt_emissao_2 = dt_emissao_2
#   search_form = all(:xpath, '//input[@data-placeholder="Escolher data"][1]')
#   search_form = find('input[data-mat-calendar="mat-datepicker-3"]').set @dt_emissao_2
#   sleep 0.1.to_i
# end
#
# Quando("data de criação de {string}") do |dt_criacao|
#   @dt_criacao = dt_criacao
#   search_form = all(:xpath, '//input[@data-placeholder="Escolher data"][1]')
#   search_form = find('input[data-mat-calendar="mat-datepicker-0"]').set @dt_criacao
#   sleep 0.1.to_i
# end
#
# Quando("data de criação até {string}") do |dt_criacao|
#   @dt_criacao = dt_criacao
#   search_form = all(:xpath, '//input[@data-placeholder="Escolher data"][1]')
#   search_form = find('input[data-mat-calendar="mat-datepicker-1"]').set @dt_criacao
#   sleep 0.1.to_i
# end
#
# Quando("Situação do Processamento {string}") do |sit_proc|
#   @sit_proc = sit_proc
#   search_form = find(:xpath, '//cam-select[@id="processing-status-filter"]').click
#   search_form = first('.mat-option-text', :text => @sit_proc).click
#   sleep 0.1.to_i
# end
#
# Quando("indico Autorizado {string}") do |sit_auto|
#   @sit_auto = sit_auto
#   search_form = find(:xpath, '//cam-select[@id="auth-filter"]').click
#   search_form = first('.mat-option-text', :text => @sit_auto).click
#   sleep 0.1.to_i
# end
#
# # Gerenciar Parceiro de Negócio
# Quando("indico tipo bloqueio {string}") do |tp_bloque|
#   @tp_bloque = tp_bloque
#   search_form = find(:xpath, '//input[@name="block-type-filter"]').click
#   search_form = find('.multiple-select-opt', :text => @tp_bloque).click
#   search_form = find(:xpath, '//input[@name="block-type-filter"]').click
#   sleep 0.1.to_i
# end
#
# Quando("carrego cadastro {string}") do |nome_cad|
#   @nome_cad = nome_cad
#   search_form = first(:xpath, '//tr/td/span[text()]', :text => @nome_cad).double_click
#   sleep 0.1.to_i
# end
#
# Quando("exibe Tipo de Parceiro {string}") do |tp_parc|
#   @tp_parc = tp_parc
#   # search_form = find(:xpath,'//input[@id="bpartner-type"]', :text => @tp_parc)
#   sleep 0.1.to_i
# end
#
# Quando("exibe Nome {string}") do |bpartner_type|
#   @bpartner_type = bpartner_type
#   # search_form = find('input[id="bpartner-type"]', :text=> @bpartner_type )
#   sleep 0.1.to_i
# end
#
# Quando("exibe Razão Social {string}") do |bpartner_short_name|
#   @bpartner_short_name = bpartner_short_name
#   # search_form = find('input[id="bpartner-short-name"]', :text=> @bpartner_short_name )
#   sleep 0.1.to_i
# end
#
# Quando("exibe CNPJ {string}") do |bpartner_cnpj|
#   @bpartner_cnpj = bpartner_cnpj
#   # search_form = find('input[id="bpartner-cnpj"]', :text=> @bpartner_cnpj )
#   sleep 0.1.to_i
# end
#
# Quando("exibe Descrição {string}") do |bpartner_description|
#   @bpartner_description = bpartner_description
#   # search_form = find('input[id="bpartner-description"]', :text=> @bpartner_description )
#   sleep 0.1.to_i
# end
#
# Quando("exibe Ativo") do
#   # search_form = find('input[id="bpartner-description"]', :text=> @bpartner_description )
#   # checkbox 'bpartner-active-input'
#   # checkbox("bpartner-active-input", "value", true)
#   # checkbox("bpartner-active-input", "true")
#   # expect(page).to have_field("input[type='checkbox'][id='bpartner-active-input']", disabled: true)
# end
#
# Quando("exibe Tipo de Bloqueio {string}") do |blo_empresa|
#   @blo_empresa = blo_empresa
#   # search_form = find('input[id="bpartner-description"]', :text=> @blo_empresa)
#   sleep 0.1.to_i
# end
#
# Quando("defino tipo de bloqueio para {string}") do |alt_blo_empresa|
#   @alt_blo_empresa = alt_blo_empresa
#   search_form = click_button 'Definir Bloqueio'
#   search_form = find(:xpath, '//cam-select[@id="bp-block-type"]').click
#   search_form = first('.ng-star-inserted', :text => @alt_blo_empresa).click
#   search_form = click_button 'Enviar'
#   sleep 0.1.to_i
# end
#
# Quando("valido Organizações {string}") do |valid_org|
#   @valid_org = valid_org
#   search_form = find('.mat-tab-label-content', :text => 'Organizações').click
#   sleep 0.1.to_i
# end
#
# Quando("valido Endereços {string} CEP {string} e Cidade {string}") do |valid_end, valid_cep, valid_cid|
#   @valid_end = valid_end
#   @valid_cep = valid_cep
#   @valid_cid = valid_cid
#   search_form = find('.mat-tab-label-content', :text => 'Endereços').click
#   search_form = first('.ng-star-inserted', :text => @valid_end)
#   search_form = first('.ng-star-inserted', :text => @valid_cep)
#   search_form = first('.ng-star-inserted', :text => @valid_cid)
#   sleep 0.1.to_i
# end
#
# Quando("valido Inscrições Estaduais {string} Tipo de Inscrição {string} e Inscrição Estadual {string}") do |valid_inscr, valid_tp_inscr, valid_tp_est|
#   @valid_inscr = valid_inscr
#   @valid_tp_inscr = valid_tp_inscr
#   @valid_tp_est = valid_tp_est
#   search_form = find('.mat-tab-label-content', :text => 'Inscrições Estaduais').click
#   search_form = first('.ng-star-inserted', :text => @valid_inscr)
#   search_form = first('.ng-star-inserted', :text => @valid_tp_inscr)
#   search_form = first('.ng-star-inserted', :text => @valid_tp_est)
#   sleep 0.1.to_i
#
# end
#
# Quando("valido Inscrições Municipais Cidade {string} e Inscrição Municipal {string}") do |valid_cod_cid, valid_ins_munic|
#   @valid_cod_cid = valid_cod_cid
#   @valid_ins_munic = valid_ins_munic
#   search_form = find('.mat-tab-label-content', :text => 'Inscrições Municipais').click
#   search_form = first('.ng-star-inserted', :text => @valid_cod_cid).click
#   search_form = first('.ng-star-inserted', :text => @valid_ins_munic).click
#   sleep 0.1.to_i
# end
