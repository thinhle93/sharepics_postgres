class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.integer :points

      t.timestamps null: false
    end
  end
end
