require 'selenium-webdriver' 
require 'rspec'

describe "Funcionalidade" do

    it "Botao Ofertas" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to "https://www.americanas.com.br/" 
        driver.manage.window.maximize

        wait = Selenium::WebDriver::Wait.new(:timeout => 15)
        
        input = wait.until{
            element = driver.find_element(:name,"conteudo")
            element if element.displayed?
        }
        input.send_keys("Notebooks")
        
        form = wait.until{
            element = driver.find_element(:id, "h_search-input")
            element if element.displayed?
        }
         
        form.find_element(:xpath,"/html/body/div[3]/header/div[2]/div[2]/div[1]/div[2]/form/div/button[2]").click
        sleep 5
        expect(driver.title).to eq "Notebooks em Promoção nas americanas"
    end
end
        
       