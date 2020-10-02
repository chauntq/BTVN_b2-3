require 'selenium-webdriver'
require 'WebDrivers'

Given('navigate to login page successfully') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.window.resize_to(1920, 1055) 
     
end

When('input {string} and {string}') do |string1, string2|
    @driver.find_element(:css, '#username').send_keys(string1)
    @driver.manage.timeouts.implicit_wait = 4
    @driver.find_element(:css, '#password').send_keys(string2)
    @driver.find_element(:css, '.fa.fa-2x.fa-sign-in').click
end

Then('message display {string}') do |string|
    expect(@driver.find_element(:css, '#flash').text).to include(string)
    @driver.quit
end

