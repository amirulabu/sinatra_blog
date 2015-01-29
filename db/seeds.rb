
class AddPostTags < ActiveRecord::Migration
  def self.seed
  post = Post.create(title: "this is a blog post", content:"this is a content, Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo")

  Tag.create(label: "tag1")
  Tag.create(label: "tag2")
  Tag.create(label: "tag3")
  Tag.create(label: "tag4")

  tag = Tag.find(3)

  #tags = post.tags

  PostsTag.create(post_id: post.id, tag_id: tag.id)


post1 = Post.create(title: "this isnumbar 2", content:"Proin quis velit sed augue faucibus viverra. Donec suscipit, sem feugiat aliquet fringilla, nunc eros malesuada velit, ut rutrum nibh diam sit amet lorem. Nullam finibus orci vel urna rutrum egestas. Fusce convallis felis nec turpis consequat, et vehicula justo feugiat. Ut vitae lacinia mi, commodo consectetur risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce lobortis lacus pulvinar ullamcorper lobortis. Sed luctus ornare nibh, ac faucibus ante. Donec posuere lectus eget nisi pellentesque, scelerisque rutrum metus faucibus. Nam rhoncus commodo tincidunt. Nulla facilisi. Vestibulum laoreet iaculis orci vitae bibendum. Phasellus ultrices facilisis nisi sit amet mollis. Pellentesque auctor turpis at erat condimentum lacinia. Morbi ultrices sit amet tortor eu hendrerit. Etiam pellentesque nibh ut orci hendrerit, ac porttitor sem dignissim.")

  tag1 = Tag.find(2)

  #tags = post.tags

  PostsTag.create(post_id: post1.id, tag_id: tag1.id)




post2 = Post.create(title: "this is a blog numbur 3", content:"Vivamus in vulputate ligula. Fusce aliquam, ligula a luctus fringilla, ex tellus blandit nunc, ut suscipit mi libero sit amet massa. Ut est eros, viverra sit amet ultrices sed, dapibus non sem. Maecenas at dolor et lectus luctus interdum. Ut luctus malesuada enim vel venenatis. Praesent auctor mollis velit. Donec accumsan a orci quis sagittis. Pellentesque eu lorem in lectus consectetur pellentesque ac at tortor. Integer vitae scelerisque tellus. Phasellus eget dignissim dolor. Aliquam molestie leo nibh, sit amet eleifend sapien ornare sed. Nullam eu enim et magna imperdiet gravida. Morbi ut dictum dui. Donec rutrum auctor orci non feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer lacus leo, tempus nec bibendum a, molestie sit amet lacus.")

  tag2 = Tag.find(2)

  #tags = post.tags

  PostsTag.create(post_id: post2.id, tag_id: tag2.id)


  end
end


AddPostTags.seed
