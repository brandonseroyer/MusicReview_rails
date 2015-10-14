class AddGenreToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :genre, :string
  end
end
