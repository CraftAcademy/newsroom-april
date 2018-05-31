class User < ApplicationRecord
  after_initialize :set_default_role, if: :new_record?

  enum role: [:subscriber, :journalist, :editor]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :role, presence: true
  has_many :articles
  has_many :comments

  private

    def set_default_role
      self.role ||= :subscriber
    end
end
