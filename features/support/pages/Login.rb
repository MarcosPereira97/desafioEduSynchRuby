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
  element :btn_takePhoto, ':nth-child(2) > .css-uc660u > .MuiTypography-root'
  element :btn_next, '.css-1p94n78'
  element :btn_acceptTerms, "[data-top='657']"

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
    # Necessita de interferencia humana para realizar a permissão de acesso a camera

    tira_foto
    btn_takePhoto.click
    for a in 1..2 do
      tira_foto
    end
    click_button 'Begin Room Scan'
    for a in 1..11 do
      # Necessita de interferencia humana para realizar o compartilhamento de tela

      btn_next.click
      sleep(1.5)
    end
    sleep(10)
  end

  def realiza_prova
    for i in 1..2 do
      click_button 'Continue'
    end
    
  end
end
