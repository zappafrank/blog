require 'page-object'
require 'data_magic'

class PostPage
  include PageObject
  include DataMagic

  page_url "localhost:4567/savepost"

  def saved_posts

  end

end