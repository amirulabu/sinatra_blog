class Post < ActiveRecord::Base
  has_many :posts_tags
  has_many :tags, through: :posts_tags

  validates :content, presence: true
  validates :title, presence: true
end

# Post.create(title: "this is a blog post", content:"this is a content, Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo")