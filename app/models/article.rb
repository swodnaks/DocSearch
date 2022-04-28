class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3}
  validates :body, presence: true
end
