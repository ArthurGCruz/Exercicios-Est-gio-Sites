require 'selenium-webdriver' 
require 'rspec'

describe "Redirecionamento" do

            it "Tela Login" do
            driver = Selenium::WebDriver.for :chrome
            driver.manage.window.maximize
            driver.navigate.to "https://www.decolar.com/" 

            element = driver.find_element("class","header-autogestion-link")
            element.click
                                    
            expect(driver.title).to eq "Decolar.com"
                sleep 5
            driver.quit
             end
    end
