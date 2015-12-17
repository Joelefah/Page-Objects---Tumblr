browser = Watir::Browser.new :firefox

Before do
  @browser = browser
  @App = App.new browser
end

#after do
#  sleep 3
#  @browser.goto "https://www.tumblr.com/blog/massivetacodinosaur"
#end

at_exit do
  browser.close
end
