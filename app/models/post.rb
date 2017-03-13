class Post < ApplicationRecord

  belongs_to :user

  acts_as_likeable

  validates :picture, :title, :body, :user, presence: true

  default_scope { order(created_at: :desc) }

end
