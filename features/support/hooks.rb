browser = Watir::Browser.new :firefox

Before do
  @browser = browser
  @App = App.new browser
end

After "@post" do
 sleep 3
  @browser.goto "https://www.tumblr.com/blog/massivetacodinosaur"
  @browser.div(class: "post_control_menu").click
  @browser.div(class: "delete").click
  @browser.button(class: "btn_1").click
end

at_exit do
  browser.close
end
