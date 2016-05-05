require 'page-object'
require 'data_magic'

class CreatePage
  include PageObject
  include DataMagic

  text_field(:title, name: 'Title')
  text_field(:author, name: 'Author')
  text_field(:date, name: 'Date')
  text_area(:post, name: 'Post')
  button(:submit)
  button(:reset)

  def enter_information
    populate_page_with data_for :create
    self.submit
  end

end