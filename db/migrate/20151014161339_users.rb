class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :username, :string

      t.timestamps
    end
    add_column :reviews, :user_id, :integer
  end
end
