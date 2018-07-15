class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :description
      t.integer :points

      t.timestamps null: false
    end
  end
end
