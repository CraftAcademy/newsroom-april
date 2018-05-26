class Article < ApplicationRecord
  validates :headline, presence: true
  validates :content, presence: true
  has_many :comments
end
