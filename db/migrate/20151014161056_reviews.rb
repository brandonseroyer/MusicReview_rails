class Reviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :title, :string
      t.column :content, :string

      t.timestamps
    end
  end
end
