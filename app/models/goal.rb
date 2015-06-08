class Goal < ActiveRecord::Base
  has_many :comments
  has_many :goal_users
  has_many :users, through: :goal_users, before_add: :verify_num_users

  validates :category, presence: true
  validates :name, presence: true
  validates :duration, presence: true


  # callback (ruby)

  def verify_num_users(user)
    raise 'Goal already has required number of users' if self.users.length >= 2
  end
end


