require 'selenium-webdriver'
require 'rspec'

describe "HomePage" do
    it "Redirecionamento Facebook" do
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

    it "Tela Celular/Smartphone" do
        driver = Selenium::WebDriver.for :chrome
        driver.manage.window.maximize
        
        driver.navigate.to "https://www.americanas.com.br/" 
        sleep 5
        element = driver.find_element(:xpath,"/html/body/div[3]/header/div[2]/div[4]/div/div/ul/li[3]/a")
        element.click

        expect(driver.title).to eq "Celulares e Smartphones em Promoção nas americanas"
        sleep 5
        driver.quit
    end

    it "Botao Ofertas" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to "https://www.americanas.com.br/" 
        driver.manage.window.maximize

        wait = Selenium::WebDriver::Wait.new(:timeout => 15)
        
        input = wait.until{
            element = driver.find_element(:name,"conteudo")
            element if element.displayed?
        }
        input.send_keys("Notebooks")
        
        form = wait.until{
            element = driver.find_element(:id, "h_search-input")
            element if element.displayed?
        }
         
        form.find_element(:xpath,"/html/body/div[3]/header/div[2]/div[2]/div[1]/div[2]/form/div/button[2]").click
        sleep 5
        expect(driver.title).to eq "Notebooks em Promoção nas americanas"
        driver.quit
    end
end

