class GoalsController < ApplicationController

  def index
    @goals = Goal.all
  end

  def new 
    @goal = Goal.new
  end

  def create
    goal = Goal.new params[:goal].permit(:category, :name, :duration)
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

end