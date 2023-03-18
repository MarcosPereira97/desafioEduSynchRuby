class Login < SitePrism::Page
  element :input_usuario, "input[id='email']"
  element :input_senha, "input[id='password']"

  def realiza_login(usuario, senha)
    input_usuario.send_keys(usuario)
    input_senha.send_keys(senha)
    click_button 'Sign In'
  end
end

class FormProva < SitePrism::Page
  def inicia_prova
    click_button 'Start a CEFR Reading Test'
    click_button 'Next'
    sleep(4)
    page.evaluate_script('data-confirm = function() { return true; }')
     page.click('Allow')  
  end
end
