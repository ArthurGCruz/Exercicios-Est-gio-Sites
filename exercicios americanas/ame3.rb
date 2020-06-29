require 'selenium-webdriver' 
require 'rspec'

describe "Redirecionamento" do

    it "Tela de Favoritos" do
        driver = Selenium::WebDriver.for :chrome
        driver.manage.window.maximize
        wait = Selenium::WebDriver::Wait.new(:timeout => 15)

        driver.navigate.to "https://www.americanas.com.br/" 

        element = driver.find_element("class","wish-link")
        element.click
      
        sleep 2
        expect(driver.title).to eq "Americanas"
        sleep 5
        driver.quit
    end
end
