require 'page-object'
require 'data_magic'

class CreatePage
  include PageObject
  include DataMagic

  text_field(:title, name: 'title')
  text_field(:author, name: 'author')
  text_field(:date, name: 'date')
  text_area(:post, name: 'post')
  button(:submit)
  button(:reset)

  def create_valid_blog
    data = data_for :create
    populate_page_with data
    self.submit
    data
  end

end