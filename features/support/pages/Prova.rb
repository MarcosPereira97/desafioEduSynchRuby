class Prova < SitePrism::Page
  element :form_perguntas, "div[class*='css-1aymzu7']"
  element :opt_resposta, "div[class*='css-1c6ln95']"

  def realiza_prova
    option = %w[A B C D]

    for p in 1..24 do
      body = find('.css-p4ia69')
      if body.find('.css-1aymzu7 > :nth-child(1) > .MuiAvatar-root') == true
        header = find('.css-1aymzu7 > :nth-child(1) > .MuiAvatar-root')
        if header.is(':visible')
          within("div[class*='css-1aymzu7']") do
            find_element(:xpath, "//button[contains(text(), #{option.sample})]").click
          end
          click_button 'Next'
          sleep(1)
        end
      else
        click_button 'Next'
        sleep(1)
      end
    end
  end
end
