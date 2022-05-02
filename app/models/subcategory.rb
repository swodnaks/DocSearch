require "elasticsearch/model"

class Subcategory < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :category
  has_many :articles, dependent: :destroy
  validates :title, presence: true, length: {minimum: 3}
  validates :text, presence: true
end
