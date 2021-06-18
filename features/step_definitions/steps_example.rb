
#Registrarse

Given (/^an user gets to demoblaze page in chrome$/) do 
@browser = Selenium::WebDriver.for :chrome
@browser.get "https://www.demoblaze.com/"
sleep 1
end 

And (/^clicks in the sign up button in the banner$/) do
elementSign = @browser.find_element(:id, "signin2")
elementSign.click
sleep 1
end

And (/^text 'username' in the user camp$/) do
elementUser = @browser.find_element(:id, "sign-username")
elementUser.send_keys("usernamerand")
sleep 1
end

And (/^text '12345' in the password camp$/) do
elementPass = @browser.find_element(:id, "sign-password")
elementPass.send_keys("12345")
sleep 1
end

When (/^clicks the sign up button$/) do 
elementSignUp = @browser.find_elements(:class, "btn")
elementSignUp[3].click
sleep 1
end

Then ('the user signed up successful') do
result = @browser.switch_to.alert.text
fail if result != 'Sign up successful'
sleep 1
end
