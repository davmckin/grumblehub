class Post < ApplicationRecord

  belongs_to :user

  acts_as_likeable

  validates :picture, presence: true

end
