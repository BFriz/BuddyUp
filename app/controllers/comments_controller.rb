class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @goal = Goal.find(params[:goal_id])
  end
   def show
    @comment = Comment.find(params[:id])
  end
  def new
    @goal = Goal.find(params[:goal_id])
    @comment = Comment.new
  end
  def create
    @goal = Goal.find(params[:goal_id])
    @goal.comments << Comment.create(comment_params)

    redirect_to(goal_comments_path)
  end
  def destroy 
    comment = Comment.find(params[:id])
    comment.destroy
    # @comment = Comment.new
    redirect_to(goal_comments_path)
  end

  def edit
    @comment = Comment.find(params[:id])
    @goal = Goal.find(params[:goal_id])
  end
  def update
    @comment = Comment.find(params[:id])
    @goal = Goal.find(params[:goal_id])
    @comment.update(comment_params)
    redirect_to goal_comments_path(@comment)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :content, :created_at)
  end
 end
