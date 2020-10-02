require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
alert_button = driver.find_element(:xpath, "//button[contains(text(),'Click for Prompt Box')]")
alert_button.click
wait = Selenium::WebDriver::Wait.new(timeout: 2)
driver.switch_to.alert.send_keys('selenium')
sleep 2
driver.switch_to.alert.accept
