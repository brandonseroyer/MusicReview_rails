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

  def destroy
    review = Review.find(params[:review_id])
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to review_path(review)
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
