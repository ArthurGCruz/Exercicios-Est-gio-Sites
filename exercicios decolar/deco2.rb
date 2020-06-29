require 'selenium-webdriver' 
require 'rspec'

describe "Funcionalidade" do

    it "Span Mensagem" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to "https://www.decolar.com/" 

        
        
        element = driver.find_element(:xpath,"/html/body/div[2]/div/div[2]/div/div[2]/button/svg").click
        

        sleep 2  
        subj = driver.find_element(:class,"validation-msg")
        expect(subj).to be_valid
        
       
        driver.quit
    end
end