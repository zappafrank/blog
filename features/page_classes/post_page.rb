require 'page-object'
require 'data_magic'

class PostPage
  include PageObject
  include DataMagic

  page_url "localhost:4567/yourpost"

  text_field(:title, name: 'title')
  text_field(:author, name: 'author')
  text_field(:date, name: 'date')
  text_area(:post, name: 'post')
  button(:submit, value: 'Home Page')

end