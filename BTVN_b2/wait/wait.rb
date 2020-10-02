require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to ( "https://formy-project.herokuapp.com/autocomplete")

select_box = driver.find_element(id:'autocomplete')
select_box.send_keys('162 Quang Trung, phường 3, Quảng Trị, Việt Nam')
# đọi thời gian cố định
driver.manage.timeouts.implicit_wait = 5 
# đơi có điều kiện
#wait = Selenium::WebDriver::Wait.new(timeout: 1)
#wait.until { driver.find_element(:class, 'pac-item').displayed? }
selectbox_result = driver.find_element(:class, 'pac-item')
selectbox_result.click
sleep 3
