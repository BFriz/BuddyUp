module GoalsHelper
  def goal_expired? goal
    Date.today > (goal.created_at + goal.duration.days)
  end
end
