require 'selenium-webdriver' 
require 'rspec'

describe "Funcionalidade" do

    it "Botao Ofertas" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to "https://www.americanas.com.br/" 
        driver.manage.window.maximize

        wait = Selenium::WebDriver::Wait.new(:timeout => 15)
        
        input = wait.until{
            element = driver.find_element(:name,"email")
            element if element.displayed?
        }
        input.send_keys("teste@gmail.com")
        
        form = wait.until{
            element = driver.find_element(:id, "email")
            element if element.displayed?
        }
         
        form.find_element(:xpath,"/html/body/div[4]/div/div/div/div[9]/form/section/div/div[2]/div/div[2]/button").click
        sleep 5
        
        
       
        subj = driver.find_element(:class, "TextTitle-sc-15dx5po-4")
        sleep 5
        expect(subj).to eq "Acesse seu e-mail para confirmar seu cadastro."
    end
end
