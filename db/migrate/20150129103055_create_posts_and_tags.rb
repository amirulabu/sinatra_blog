class CreatePostsAndTags < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps null: false
    end

    create_table :tags do |t|
      t.string :label

      t.timestamps null: false
    end

    create_table :posts_tags, id: false do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :part, index: true
    end

  end
end

#Post.create(title: "this is a blog post", content:"this is a content, Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo")
