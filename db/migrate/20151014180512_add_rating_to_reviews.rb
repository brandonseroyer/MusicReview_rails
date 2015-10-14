class AddRatingToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :ratings, :integer, array: true
  end
end
