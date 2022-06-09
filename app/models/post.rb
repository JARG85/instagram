class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likeable, class_name: Like.name
  has_many :comments, as: :commentable
  has_one_attached :image
  scope :ordered, -> {order(id: :desc)}
end
