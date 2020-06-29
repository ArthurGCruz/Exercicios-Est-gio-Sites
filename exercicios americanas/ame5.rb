require "selenium-webdriver"
require "rspec"

describe "Funcionalidade" do

  it "Mini Menu", :js => true do
    driver = Selenium::WebDriver.for :chrome

    driver.navigate.to "https://www.americanas.com.br/" 
    sleep 2

    empty_stars = driver.find_element(:css, "#h_menu > div > div > a")
    star_3 = driver.find_element(:css, "#h_menu > div > div > div > div > div:nth-child(2) > ul > li.mmn-item.has-children.mmn-submenu.sz.sz-1")
  
    driver.action.move_to(empty_stars).perform
    # wait.until { star_3.displayed? == true }
  
    star_3.click
   
  
    driver.should have_css("#h_menu > div > div > div > div > div:nth-child(2)")

    sleep 2
    driver.quit
  end
        
end