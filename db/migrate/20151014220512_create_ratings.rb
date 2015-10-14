class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.column :score, :integer
      t.column :review_id, :integer
      t.column :user_id, :integer
      
      t.timestamps
    end
  end
end
