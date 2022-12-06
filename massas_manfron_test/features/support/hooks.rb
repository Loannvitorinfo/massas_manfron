Before do

  @login = Login_page.new

  @general_classes = General_classes.new

  @Perfil = Perfil.new

end

# Relatorio com imagem do último passo executado de todos cenários
After do |scenario|
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome_cenario = nome_cenario.gsub(' ', ' ').downcase!
  screenshot = "Relatorio_BDD/tst/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'nome_cenario')
end

require_relative 'helper.rb'
After do |scenario|
  @helper = Helper.new
  @nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
  @helper.take_screenshot(@nome, 'Relatorio_BDD/test_failed') if scenario.failed?
  unless @helper.take_screenshot(@nome, 'Relatorio_BDD/test_passed')
  end
end

at_exit do

  case ENV['REPORT']
  when 'RUN'
    ReportBuilder.input_path = "reports/cucumber.json"

    ReportBuilder.configure do |config|
      config.report_path = "reports/run"
      config.report_types = [:json, :html]
    end

  when 'RERUN'
    ReportBuilder.input_path = "reports/rerun_reports/cucumber.json"

    ReportBuilder.configure do |config|
      config.report_path = "reports/rerun_reports/rerun"
      config.report_types = [:json, :html]
    end

  when 'RETRY_RERUN'
    ReportBuilder.input_path = "reports/rerun_reports/retry/cucumber.json"

    ReportBuilder.configure do |config|
      config.report_path = "reports/rerun_reports/retry/retry-rerun"
      config.report_types = [:json, :html]
    end

  else
    p 'case not matching'

  end

  options = {
    report_title: "Relatório de RV POINT STG #{ENV['REPORT']}"
  }
  ReportBuilder.build_report options

end