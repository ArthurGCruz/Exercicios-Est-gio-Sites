require 'selenium-webdriver'
require 'rspec'

describe "Redirecionamento" do 

    it "Tela Login" do

        driver = Selenium::WebDriver.for :chrome
        driver.manage.window.maximize

        driver.navigate.to "https://www.saraiva.com.br/"
        element = driver.find_element("id","link-account")
        element.click
        
        sleep 5
        expect(driver.title).to eq "Login"
        driver.quit
    end
end