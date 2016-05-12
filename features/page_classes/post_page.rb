require 'page-object'
require 'data_magic'

class PostPage
  include PageObject
  include DataMagic

  text_field(:title, name: 'Title')
  text_field(:author, name: 'Author')
  text_field(:date, name: 'Date')
  text_area(:post, name: 'Post')
  button(:submit)

end