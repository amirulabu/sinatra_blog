get '/post/:post' do

  params[:post]
end

get '/create' do
  erb :create
end

post '/createpost' do
  Post.create(title: param[:title],
    content: param[:content])
  redirect to('/')
end

