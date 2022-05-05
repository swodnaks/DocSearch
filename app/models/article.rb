class Article < ApplicationRecord
  include SearchFlip::Model
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :subcategory
  validates :title, presence: true, length: {minimum: 3}
  validates :body, presence: true
end
