class CreateScreenshots < ActiveRecord::Migration[5.1]
  def change
    create_table :screenshots do |t|
      t.integer :application_id, null: false
    end

    add_index :screenshots, :application_id
  end
end
