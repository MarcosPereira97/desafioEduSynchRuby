class Prova < SitePrism::Page
  def realiza_prova
    option = %w[A B C D]

    for p in 1..10 do
      within("div[class*='css-1aymzu7']") do
        click_button option.sample
        sleep(0.5)
      end
      click_button 'Next'
    end
    sleep(10)
  end
end
