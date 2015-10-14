class UsersController < ApplicationController
  def index
    @users = User.all
    @reviews = Review.order(params[:sort])
  end

  def show
    @user = User.find(params[:id])
  end

end
