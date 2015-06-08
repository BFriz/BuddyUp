class User < ActiveRecord::Base
  has_many :goal_users
  has_many :goals, through: :goal_users
  has_many :comments 
end
