class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.string :url, null: false
      t.string :parent_company
      t.text :description
      
      t.timestamps
    end
  end
end
