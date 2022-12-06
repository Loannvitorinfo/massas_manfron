class Perfil #< SitePrism::Page
  include Capybara::DSL

  def open_nome_perfil(nome_perfil)
    search_form = find(:xpath, '//input[@name=@id="nome"]').set nome_perfil
  end

  def alt_senha_perfil

  end

  def conf_sen

  end

end






