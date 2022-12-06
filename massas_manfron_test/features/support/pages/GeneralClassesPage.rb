class General_classes
  include Capybara::DSL

  def open_logou_system
    search_form = find('.avatar-container').click
    search_form = find(:xpath, '//span[text()="Sair"]').click
    search_form = find(:xpath, '//h2[text()="Iniciar Sessão"]')
    sleep 0.1.to_i
  end

  #Clicar em 'Salvar'
  def Salvar
    search_form = find('.btn-primary', :text => 'Salvar').click
  end

  def yes_form
    search_form = find('.x-btn-button', :text => 'Sim').click
  end

  def not_form
    search_form = find('.x-btn-button', :text => 'Não').click
  end

  def open_sessao_expirada
    search_form = find('.alert alert-danger', :text => 'Sessão expirada. Recarregue a página.').click
  end

end


