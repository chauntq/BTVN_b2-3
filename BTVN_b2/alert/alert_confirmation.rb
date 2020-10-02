require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
alert = driver.find_element(:xpath, '/html[1]/body[1]/div[2]/div[1]/div[2]/div[2]/div[2]/button[1]').click
alert = driver.switch_to.alert
sleep 2

alert.dismiss
