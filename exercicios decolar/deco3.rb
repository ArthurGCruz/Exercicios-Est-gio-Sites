require 'selenium-Webdriver'
require 'rspec'

describe "Redirecionamento" do 

        it "Troca de Idioma" do
                
                driver = Selenium::WebDriver.for :chrome
                driver.navigate.to "https://www.decolar.com/" 
                sleep 2
              
                element = driver.find_element(:xpath,"/html/body/div[5]/div[2]/div[2]/div[5]/div/div/div/select/option[18]")
                driver.action.move_to(element).perform
                driver.click
            
                sleep 10
                driver.switch_to.window(driver.window_handles.last)
                
                expect(driver.title).to eq "Bienvenido a Despegar | Welcome to Despegar"
                sleep 5
                driver.quit
            /findElementByClassName(parent, class_name) ⇒ Object
        end
end