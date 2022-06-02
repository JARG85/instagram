class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likeable, class_name: Like.name
  has_many :comments, as: :commentable
end
