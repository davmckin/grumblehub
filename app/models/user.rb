class User < ApplicationRecord

  has_many :posts

  acts_as_liker

end
