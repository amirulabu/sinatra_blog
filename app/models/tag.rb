class Tag < Activerecord::Base
  has_and_belongs_to_many :posts
end