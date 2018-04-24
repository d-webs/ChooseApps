class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.integer :user_id, null: false
      t.integer :application_id, null: false
      t.integer :rating, null: false

      t.timestamps
    end

    add_index :reviews, [:user_id, :application_id], unique: true
    add_index :reviews, :application_id
  end
end
