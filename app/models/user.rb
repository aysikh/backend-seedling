class User < ApplicationRecord
  has_secure_password
  has_many :daily_entries
  has_many :user_goals
  has_many :goals, through: :user_goals
  has_many :blog_posts

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 1 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
