Dado('que acesso a plataforma EduSynch') do
  visit "/"
end

Dado('realizo o login com {string} e {string}') do |usuario, senha|
  @login.realiza_login(usuario, senha)
end

Quando('realizo a prova') do
  @prova.inicia_prova
  sleep(10)
end

Então('verifico o resultado') do
  pending # Write code here that turns the phrase above into concrete actions
end
