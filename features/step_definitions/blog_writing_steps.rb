require 'page-object'
require 'data_magic'

include PageObject::PageFactory

When(/^I create a blog post$/) do
  visit_page(IndexPage).blog_posts
  on_page(CreatePage).create_valid_blog
end


Then(/^the blog post contains the submitted content$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


When(/^I create a blog post with a duplicate title$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^I am alerted to change the title and I remain on the create page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end