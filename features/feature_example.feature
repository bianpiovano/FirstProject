# encoding: UTF-8
Feature: User sign up.

Scenario: True user sign up.

Given an user gets to demoblaze page in chrome
And clicks in the sign up button in the banner
* text 'username' in the user camp
* text '12345' in the password camp 
When clicks the sign up button
Then the user signed up successful