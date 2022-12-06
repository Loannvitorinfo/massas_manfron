require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
# require 'webdrivers/chromedriver'


# gemas para API
# require "httparty"
# require "httparty/request"
# require "httparty/response/headers"
# require "faker"
# require "cpf_faker"

Capybara.javascript_driver = :webkit

Capybara.configure do |config|
  # config.default_driver = :selenium #roda no navegador Firefox
  # config.default_driver = :selenium_headless #sem roda no navegador
  config.default_driver = :selenium_chrome #roda no navegador chrome
  # config.default_driver = :selenium_chrome_headless # sem roda no navegador carregando chroem
  # config.default_driver = :selenium_chrome #roda no navegador
  config.app_host = 'file:///C:/Projeto/massas_manfron/index.html'

  # config.default_driver = :selenium_chrome_headless #roda com o nageador em background
  # Capybara.page.driver.browser.manage.window.maximize #Maximizando o navegador para o teste
  config.default_max_wait_time = 10
end