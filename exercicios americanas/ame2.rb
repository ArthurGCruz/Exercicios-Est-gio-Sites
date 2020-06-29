require "selenium-webdriver"
require "rspec"

describe "Redirecionamento" do

    it "Tela Celular/Smartphone" do
        driver = Selenium::WebDriver.for :chrome
        driver.manage.window.maximize
        
        driver.navigate.to "https://www.americanas.com.br/" 
        sleep 5
        element = driver.find_element(:xpath,"/html/body/div[3]/header/div[2]/div[4]/div/div/ul/li[3]/a")
        element.click

        expect(driver.title).to eq "Celulares e Smartphones em Promoção nas americanas"
        sleep 5
        driver.quit
    end
end