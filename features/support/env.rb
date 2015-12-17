
require 'watir'
require 'pry'
require 'rspec/expectations'


#Require page object models
Dir["../pages/*_pages.rb"].each {|file| require file }
