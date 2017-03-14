class User < ApplicationRecord

  has_many :posts

  acts_as_liker
  has_secure_password

  private

  def to_s
    username
  end


end
