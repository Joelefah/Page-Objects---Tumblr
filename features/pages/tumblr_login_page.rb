class TumblrLogin < GenericPages

  LOC = "http://tumblr.com/login"

  def visit
    @browser.goto LOC
  end

  def email(e) 
    @browser.text_field(id: 'signup_email').set e
  end

  def password(p)
    @browser.text_field(id: 'signup_password').set p
  end

  def login_button
    @browser.button(id: "signup_forms_submit").click
  end

  def login_for e, p 
    visit
    email(e)
    password(p)
    login_button
  end
end
