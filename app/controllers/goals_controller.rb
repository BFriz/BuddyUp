class GoalsController < ApplicationController

  def index
    @goals = Goal.all

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
  
  def add_user
    @goal = Goal.find(params[:id])
    @goal.users << current_user 
    respond_to do |format|
      format.html
  # Include gives you all the assocaitions on goal in this case users)
      format.json { render json: @goal.to_json(include: :users), status: 200 }
      redirect_to :back

    end
  end

end