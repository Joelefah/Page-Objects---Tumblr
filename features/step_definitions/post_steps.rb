Given(/^I select the text post button on the dashboard$/) do
  @b = TumblrCreatePost.new @browser
  @b.click_post_button
end

When(/^I fill out the title field$/) do
  @b.title_text "Test title"
end

When(/^the body field$/) do
  @b.body_text "Test body"
end

When(/^I submit the post$/) do
  @b.submit_post
end

When(/^I go to my blog$/) do
 @b.visit_blog
end

Then(/^I should see my post on the dashboard$/) do
  @b.verification
end


