require "selenium-webdriver"
require "rspec"

describe "Refresh" do

    it "Tela Inicial" do
    driver = Selenium::WebDriver.for :chrome

    driver.navigate.to "https://www.americanas.com.br/" 
    sleep 5
    element = driver.find_element("id","h_brand")
    element.click
    
    expect(driver.title).to eq "Americanas - Tudo. A toda hora. Em qualquer lugar."
    sleep 2
    driver.quit
     end
end