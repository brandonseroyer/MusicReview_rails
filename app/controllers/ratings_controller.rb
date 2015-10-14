class RatingsController < ApplicationController
  def new
    @review = Review.find(params[:review_id])
    @rating = @review.ratings.new
  end

  def create
    @review = Review.find(params[:review_id])
    @rating = @review.ratings.new(rating_params)
    if @rating.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

private
  def rating_params
    params.require(:rating).permit(:score)
  end

end
