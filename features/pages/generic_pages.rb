class GenericPages

 
  include RSpec::Matchers
  
  attr_accessor :browser

  
  def initialize(browser)
    @browser = browser
  end

  def title
    @browser.title
  end

  def url
    @browser.url
  end

  def element_exists?(el)
    @browser.element_exists?(el)
  end
end
