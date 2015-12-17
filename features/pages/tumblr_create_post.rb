class TumblrCreatePost < GenericPages

  def click_post_button
    @browser.i(class: "icon_post_text").click
  end

  def title_text title
    @browser.div(class: "editor-plaintext").send_keys title
  end

  def body_text body
    @browser.div(class: "editor-richtext").click
    @browser.send_keys body
  end

  def submit_post
    @browser.button(class: "create_post_button").click
  end

   def make_post title = "Test title", body = "Test body"
    click_post_button
    title_text title
    body_text body
    submit_post
  end

  def verification
    verification = @browser.elements(class: "body-text")
    verification.each do |a|
      if a.text.match /Test body/
        puts "\'#{a.text}\' has been successfully posted on the dashboard!"
       else
        puts "The post could not be found"
      end
    end
  end
end
