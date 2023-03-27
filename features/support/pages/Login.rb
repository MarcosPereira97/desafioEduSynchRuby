class Login < SitePrism::Page
  element :input_usuario, "input[id='email']"
  element :input_senha, "input[id='password']"

  def realiza_login
    usuario = 'qatest@edusynch.com'
    senha = 'qa12345'

    input_usuario.send_keys(usuario)
    input_senha.send_keys(senha)
    click_button 'Sign In'
  end
end
