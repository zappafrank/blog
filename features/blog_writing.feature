Feature: Creating A Blog

  Scenario: Create A Blog Post
    When I create a blog post
    Then the blog post contains the submitted content

  Scenario: Multiple Blog Posts
    When I create a blog post with a duplicate title
    Then I am alerted to change the title and I remain on the create page
