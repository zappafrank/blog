Feature: Viewing A Blog

  Scenario: There are Less Than Ten Blog Posts
    When there are less than ten blog posts
    Then all blog posts are displayed from newest to oldest

  Scenario: There Are Ten Blog Posts
    When there are exactly ten blog posts
    Then ten blog posts are displayed from newest to oldest

  Scenario: There Are More Than Ten Blog Posts
    When there are more than ten blog posts
    Then only the ten most recent blog posts are displayed from newest to oldest

  Scenario: Leaving A Comment
    When I submit the comment information
    Then the comment displays the submitted information below previous comments

  Scenario: Viewing A Full Blog
    When I open a blog post
    Then the full content is displayed