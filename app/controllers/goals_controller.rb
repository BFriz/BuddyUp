class GoalsController < ApplicationController

  def index
    @goals = Goal.all
  end

  def new 
    @goal = Goal.new
  end

  def create
    goal = Goal.new params[:goal].permit(:category, :name, :duration, :content)
    # binding.pry
    if goal.save
      redirect_to goals_path
    else
      render 'new'
    end
  end
  def show
    # binding.pry
    @goal = Goal.find(params[:id])
  end
  def add_user
    @goal = Goal.find(params[:id]) 
    @goal.users << User.new(name: 'Ben', nick_name: 'Zirf', country: 'Canada')
    flash[:success] = 'You have joined this goal'
    redirect_to @goal
  end

end