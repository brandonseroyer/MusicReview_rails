class CommentsController < ApplicationController
  def new
    @review = Review.find(params[:review_id])
    @comment = @review.comments.new
  end

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.new(comment_params)
    if @comment.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
