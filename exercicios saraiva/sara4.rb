require 'selenium-webdriver'
require 'rspec'

describe "Homepage" do 
    it "Mover Box Banner" do
        driver = Selenium::WebDriver.for :chrome
        
        driver.navigate.to "https://www.saraiva.com.br/"

        element = driver.find_element("id","slider-default-slider__prev").click

        sleep 5

        expect(driver.name()).to eq "Saraiva"
    end
end
