class GoalsController < ApplicationController

  def index
    @goals = Goal.all
    @goal = Goal.new    
  end

  def new 
    @goal = Goal.new
  end

  def create
    goal = Goal.new params[:goal].permit(:category, :name, :duration, :content)
    if goal.save
      redirect_to goals_path
    else
      render 'new'
    end
  end
  def show
    @goal = Goal.find(params[:id])
  end
 # def destroy
    # ID 12 created comment for example
# created_at: Tue, 09 Jun 2015 14:41:12 UTC +00:00,
  # end
  
  def add_user
    @goal = Goal.find(params[:id]) 
    @goal.users << User.new(name: 'Ben', nick_name: 'Zirf', country: 'Canada')
    flash[:success] = 'You have joined this goal'
    redirect_to @goal
  end

end