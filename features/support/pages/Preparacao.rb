class TestPreparations < SitePrism::Page
  element :btn_clickToPhoto, "button[class*='css-132l67w']"
  element :btn_save, "button[class*='css-uq2gcv']"
  element :btn_next, "button[class*='css-1p94n78']"
  element :btn_takePhoto, ':nth-child(2) > .css-uc660u > .MuiTypography-root'
  element :btn_RoomScan, "button[class*='css-14hdro5']"
  element :btn_UnderstandAgree, "button[class*='css-1p94n78']"

  def inicia_preparacao
    click_button 'Start a CEFR Reading Test'
    click_button 'Next'
  end

  def tira_foto
    click_button 'Click here to take a photo'
    btn_save.click
    sleep(1)
    click_button 'Next'
    sleep(3)
  end

  def preparacao_prova
    # Necessita de interferencia humana para realizar a permissão de acesso a camera

    tira_foto
    btn_takePhoto.click
    for a in 1..2 do
      tira_foto
    end
    click_link_or_button 'Begin Room Scan'
    sleep(2)
    for n in 1..9 do
      # Necessita de interferencia humana para realizar a permissão de compartilhamento de tela
      assert_text 'Next'
      click_button 'Next'
      sleep(2)
    end
    btn_UnderstandAgree.click
    for i in 1..2 do
      sleep(2)
      click_button 'Continue'
    end
  end
end
