class Category < ApplicationRecord
  belongs_to :user, :optional => true, :class_name => "User",
  :foreign_key => 'user_id'
  has_many :subcategories, dependent: :destroy 
  validates :title, presence: true, length: {minimum: 3}
  validates :text, presence: true
end
