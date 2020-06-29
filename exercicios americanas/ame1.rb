require "selenium-webdriver"
require "rspec"

describe "Refresh" do

    it "Logo" do
        driver = Selenium::WebDriver.for :chrome
        driver.manage.window.maximize
        
        driver.navigate.to "https://www.americanas.com.br/" 
        sleep 5
        element = driver.find_element("id","h_brand")
        element.click
        
        expect(driver.title).to eq "Americanas - Tudo. A toda hora. Em qualquer lugar."
        sleep 2
        driver.quit
     end
end