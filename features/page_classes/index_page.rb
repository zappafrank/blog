require 'page-object'
require 'data_magic'

class IndexPage
  include PageObject
  include DataMagic

  page_url "localhost:4567/homepage"

  button(:create, name: 'Create')

end