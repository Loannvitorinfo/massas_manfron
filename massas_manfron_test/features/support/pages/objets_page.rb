class Login_page #< SitePrism::Page
  include Capybara::DSL

  def acessar
    visit ''
  end

  def faz_login_ (login,loja ,senha)
    search_form = find(:xpath, '//input[@id="login"]').set login
    search_form = find(:xpath, '//input[@id="store"]').set loja
    search_form = find(:xpath, '//input[@id="pass"]').set senha
  end

  def faz_login (login,loja ,senha)
    search_form = find(:xpath, '//input[@name="nome_primario"]').set login
    search_form = find(:xpath, '//input[@name="loja_primaria"]').set loja
    search_form = find(:xpath, '//input[@name="senha_primaria"]').set senha
  end
end

def open_autenticado #(autenticado)
  search_form = find(:xpath, '//input[@id="login"]').set 'admteste'
  search_form = find(:xpath, '//input[@id="store"]').set 'test'
  search_form = find(:xpath, '//input[@id="pass"]').set '123456'
  search_form = click_button 'Entrar'
  sleep 0.1.to_i
end

def open_autenticado_user #(usuario)
  search_form = find(:xpath, '//input[@id="login"]').set 'admteste'
  search_form = find(:xpath, '//input[@id="store"]').set 'teste'
  search_form = find(:xpath, '//input[@id="pass"]').set '123456'
  search_form = click_button ' Entrar '
  sleep 5.to_i
end

def open_system_logout
  search_form = find(:xpath, ' //a[text()=" Sair
                "]').click
  sleep 0.1.to_i
end

def faz_login_antingo
  search_form = find(:xpath, '//input[@name="nome_primario"]').set `admteste`
  #search_form = find(:xpath, '//input[@name="loja_primaria"]').set `teste`
  #search_form = find(:xpath, '//input[@name="senha_primaria"]').set `123456`
  #search_form = click_button 'Entrar'
end
