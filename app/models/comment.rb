class Comment < ActiveRecord::Base
  belongs_to :goal
  belongs_to :user


validates :author, presence: true
# validates :name, presence: true
# validates :duration, presence: true


end
