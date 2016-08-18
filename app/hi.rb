require 'sinatra'
require 'slim'

$blog_posts = {}

get '/homepage' do
  slim :index
end

post '/homepage' do
  slim :index
  puts puts
end

get '/create' do
  slim :create
end

post '/savepost' do
  newPost = Post.new
  newPost.title = params['title']
  newPost.author = params['author']
  newPost.date = params['date']
  newPost.post = params['post']

  $blog_posts[newPost.title] = newPost
  slim :yourpost, {}, {post: newPost}
end

class Post
  attr_accessor :title
  attr_accessor :author
  attr_accessor :date
  attr_accessor :post
end

