class User < ApplicationRecord
  enum role: [:subscriber, :journalist, :editor]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :role, presence: true
end
