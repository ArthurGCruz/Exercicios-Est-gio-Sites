require 'selenium-webdriver' 
require 'rspec'

describe "Redirecionamento" do

            it "Tela Login" do
            driver = Selenium::WebDriver.for :chrome
            driver.manage.window.maximize
            driver.navigate.to "https://www.saraiva.com.br/" 
            sleep 5
            element = driver.find_element("id","social-link-fb")
            element.click
                                
            driver.switch_to.window(driver.window_handles.last)
            expect(driver.title).to eql "Saraiva - Página inicial | Facebook"
            driver.quit
             end
    end