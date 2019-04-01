require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for :firefox

Given(/^I Open the twitter homepage$/) do
driver.navigate.to "https://twitter.com/"
end

Then ("user click on the Login button") do
  driver.find_element(:xpath,'//*[@id="doc"]/div/div/div/div[2]/div[2]/div/a[2]').click
sleep(2)
end

Then ("user input username") do
  driver.find_element(:xpath,'//*[@id="page-container"]/div/div/form/fieldset/div[1]/input').send_keys("")
sleep(2)
end

Then ("user input password") do
  driver.find_element(:xpath,'//*[@id="page-container"]/div/div/form/fieldset/div[2]/input').send_keys("")
sleep(2)
end

Then ("user click on the login") do
  driver.find_element(:xpath,'//*[@id="page-container"]/div/div/form/div/button').click
sleep(2)
end

Then ("user input username correct") do
  driver.find_element(:xpath,'//*[@id="page-container"]/div/div/form/fieldset/div[1]/input').send_keys("WidyaRyndu")
sleep(2)
end

Then ("user input password correct") do
  driver.find_element(:xpath,'//*[@id="page-container"]/div/div/form/fieldset/div[2]/input').send_keys("widyarini")
sleep(2)
end

Then ("user click on the login correct") do
  driver.find_element(:xpath,'//*[@id="page-container"]/div/div/form/div/button').click
sleep(5)
end

Then ("user click icon profile") do
  driver.find_element(:id,'user-dropdown').click
sleep(2)
end

Then ("user click logout") do
  driver.find_element(:id,'signout-button').click
sleep(2)
end

Then ("user click on the register") do
  driver.find_element(:xpath,'//*[@id="doc"]/div/div/div/div[2]/div[2]/div/a[1]').click
sleep(2)
end

Then ("user input name") do
  driver.find_element(:xpath,'//*[@id="react-root"]/div[2]/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/div/div[2]/label/div[2]/div/input').send_keys("widyarini")
sleep(2)
end

Then ("user input telepon") do
  driver.find_element(:xpath,'//*[@id="react-root"]/div[2]/div/div/div/div/div[2]/div[2]/div/div/div[2]/div[2]/div/div/div[3]/label/div[2]/div/input').send_keys("081227019390")
sleep(2)
end

 Then ("user click next") do
 driver.find_element(:xpath,'//*[@id="react-root"]/div/div[2]/div/div/div/div/div[2]/div[2]/div/div/div/div[2]/div[1]/div/div/div/div[3]/div/div/span').click
 sleep(2)
 end
