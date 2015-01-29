get '/tag' do

  erb :tag
end

get '/tag/:tagid' do
  tagname = Tag.find(params[:tagid])
  posttag = PostsTag.where(tag_id: tagname.id)
  @array = []
  posttag.each do |x|
     @array << x.post_id
  end
  erb :thetag
end
