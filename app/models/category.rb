class Category < ApplicationRecord
  has_many :subcategories
  has_many :articles
  validates :title, presence: true, length: {minimum: 3}
  validates :text, presence: true
end
