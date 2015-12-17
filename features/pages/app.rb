class App
  def initialize(browser)
    @b = browser
  end
  def generic_page
    GenericPages.new @b
  end
  def google
    GoogleHomePage.new @b
  end
  def login
    LoginPage.new @b
  end
end
