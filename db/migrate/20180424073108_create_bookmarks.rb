class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks, id: false do |t|
      t.integer :user_id, null: false
      t.integer :application_id, null: false, index: true

      t.timestamps
    end

    add_index :bookmarks, [:user_id, :application_id], unique: true
  end
end
