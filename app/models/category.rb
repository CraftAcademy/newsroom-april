class Category < ApplicationRecord
  validates :name, presence: true
  has_many :articles
  translates :name
end
