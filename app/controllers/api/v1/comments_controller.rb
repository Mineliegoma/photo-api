class Api::V1::CommentsController < ApplicationController
  def index
    comments = Comment.all.sort
    render json: comments
  end
  def create
    # byebug
   comment = Comment.create!(comments_params)
   
   render json: comment
  end 
  def show
    comment= Comment.find(params[:id])
    render json: comment
  end 
  # def update
  #   comment= Comment.find(params[:id])
  #   comment.update(comments_params)
  #   render json: comment
  # end 

  private 
  def comments_params
   params.require(:comment).permit(:name, :text, :photo_id)

  end

end
