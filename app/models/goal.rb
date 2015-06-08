class Goal < ActiveRecord::Base
  has_many :comments
  has_many :goal_users
  has_many :users, through: :goal_users
end


