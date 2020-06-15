require 'selenium-webdriver' 
require 'rspec'

describe "redirecionamento" do

            it "Tela Central de Atendimento" do
            driver = Selenium::WebDriver.for :chrome

            driver.navigate.to "https://www.saraiva.com.br/" 

            element = driver.find_element("id","link-cms-central-de-atendimento")
            element.click
            sleep 5
            expect(driver.title).to eq "Central de Atendimento | Saraiva"
            sleep 2
            driver.quit
             end
    end