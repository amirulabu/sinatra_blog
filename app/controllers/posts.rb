get '/post/:post' do
  @thepostid = params[:post]
  erb :post
end

get '/create' do
  erb :create
end

post '/createpost' do
  post = Post.create(params[:content])
  tag = Tag.find(params[:tag][:tag_id])

  PostsTag.create(tag_id: tag.id, post_id: post.id)
  unless post.nil?
  redirect to("/post/#{post.id}")
  end
end

