class TestPreparations < SitePrism::Page
  element :btn_clickToPhoto, "button[class*='css-132l67w']"
  element :btn_save, "button[class*='css-uq2gcv']"
  element :btn_takePhoto, ':nth-child(2) > .css-uc660u > .MuiTypography-root'
  element :btn_RoomScan, "button[class*='css-14hdro5']"

  def inicia_preparacao
    click_button 'Start a CEFR Reading Test'
    click_button 'Next'
  end

  def tira_foto
    clickToPhoto = driver.find_selector(btn_clickToPhoto)
    click_button 'Click here to take a photo'
    sleep(1)
    btn_save.click
    sleep(1)
    click_button 'Next'
    sleep(4)
  end

  def preparacao_prova
    # Necessita de interferencia humana para realizar a permissão de acesso a camera

    if clickToPhoto.is_enabled
      tira_foto
    else
      sleep(5)
      tira_foto
    end

    btn_takePhoto.click
    for a in 1..3 do
      tira_foto
    end
    sleep(4)
    click_button 'Begin Room Scan'
    for a in 1..10 do
      # Necessita de inte4ferencia humana para realizar o compartilhamento de tela

      btn_next.click
      sleep(1)
    end
  end
end
