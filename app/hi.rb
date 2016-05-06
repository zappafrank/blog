require 'sinatra'
require 'slim'

@blog_posts = {}

get '/homepage' do
  slim :index
end

get '/create' do
  slim :create
end

post '/savepost' do
  newPost = Post.new
  newPost.title = params['title']
  newPost.title = params['author']
  newPost.title = params['date']
  newPost.title = params['post']

  @blog_posts[newPost.title] = newPost

end

class Post
  attr_accessor :title
  attr_accessor :author
  attr_accessor :date
  attr_accessor :post
end