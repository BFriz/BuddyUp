class Goal < ActiveRecord::Base
  has_many :comments
  has_many :goal_users
  has_many :users, through: :goal_users

  validates :category, presence: true
  validates :name, presence: true








end


