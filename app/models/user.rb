class User < ActiveRecord::Base
  has_secure_password
  validates :password, presence: true, on: :create
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }

  has_many :goal_users
  has_many :goals, through: :goal_users
  has_many :comments 
end
