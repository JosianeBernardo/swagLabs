require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper'
require 'pry'

World(PageObject)

Capybara.configure do |config|
    config.app_host = 'https://www.saucedemo.com'
    config.default_max_wait_time = 10
    config.default_driver = :selenium_chrome
end