class Prova < SitePrism::Page
    element :btn_next, '.css-kxccc1 .css-1p94n78'
  
    def realiza_prova
      option = %w[A B C D]
  
      qtd_perguntas = find_element('.css-hqr8k2 .css-16agw28').getText
  
      puts qtd_perguntas
  
      if find('.css-1aymzu7') == true
        find('button', text: option.sample).click
        sleep(0.5)
        click_button 'Next'
      else
        click_button 'Next'
      end
    end
    
  end