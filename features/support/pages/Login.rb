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

class TestPreparations < SitePrism::Page
  def inicia_preparacao
    click_button 'Start a CEFR Reading Test'
    click_button 'Next'
  end

  def tira_foto
    click_button 'Click here to take a photo'
    click_button 'Save'
    click_button 'Next'
  end

  def tira_fotos
    # Necessita de interferencia humana para realizar a permissão da camera
    # Apenas no inicio de cada teste 

    sleep(5)
    tira_foto
    within '.css-1mi3tt8 .css-19xywav' do
      click_button 'Take a photo'
    end
    for a in 1..2 do
      tira_foto
     end
     click_button 'Begin Room Scan'
  end
end
