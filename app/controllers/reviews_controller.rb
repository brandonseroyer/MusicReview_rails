class ReviewsController < ApplicationController
  def index

    if params[:genre]
      @reviews = Review.search(params[:genre])
      @feature = Review.all.sample
    else
      @reviews = Review.order(params[:sort])
      @feature = @reviews.sample
    end
  end

  def show
    @review = Review.find(params[:id])
    @comments = @review.comments
    @ratings = @review.ratings
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to reviews_path
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    # binding.pry
    if @review.update(review_params)
      redirect_to review_path(@review)
    else
      render :edit
    end
  end

private
  def review_params
    params.require(:review).permit(:title, :content, :user_id, :genre)
  end

end
