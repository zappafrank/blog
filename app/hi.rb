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
 class Post
   Post newPost = new.Post(@blog_posts)
 end
end