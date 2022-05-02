class Article < ApplicationRecord
  include SearchFlip::Model
  belongs_to :subcategory
  validates :title, presence: true, length: {minimum: 3}
  validates :body, presence: true
end
