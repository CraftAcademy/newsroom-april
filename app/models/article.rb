class Article < ApplicationRecord
  validates :headline, presence: true
  validates :content, presence: true
end
