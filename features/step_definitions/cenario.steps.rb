Dado('que acesso a plataforma EduSynch') do
  visit "/"
end

Quando('realizo login utilizando credenciais válidas') do
  @login.realiza_login
end

Quando('efetuo os procedimentos necessarios para realizar a prova') do
  @preparacao.inicia_preparacao
  @preparacao.preparacao_prova
end

Quando('respondo as perguntas') do
  @prova.realiza_prova
end

Então('visualizo a tela final') do
  pending # Write code here that turns the phrase above into concrete actions
end