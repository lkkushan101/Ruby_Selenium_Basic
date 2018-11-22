require 'selenium-webdriver'

driver = Selenium::WebDriver.for(:chrome)
driver.navigate.to("http://www.google.lk")
driver.find_element(:name, "q").send_key("Selenium")
driver.find_element(:name, "q").send_key :return
driver.find_element(:xpath, "//*[@id='rso']/div[1]/div/div[1]/div/div/div[1]/a/h3").click
if driver.title == "Selenium - Web Browser Automation"
  puts driver.title
end