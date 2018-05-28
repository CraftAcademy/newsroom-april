class User < ApplicationRecord
  enum role: [:subscriber, :journalist, :editor]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :role, presence: true
  has_many :articles
  has_many :comments
end
