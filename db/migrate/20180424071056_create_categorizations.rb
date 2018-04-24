class CreateCategorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :categorizations, id: false do |t|
      t.integer :application_id, null: false
      t.integer :industry_id, null: false
    end

    add_index :categorizations, [:industry_id, :application_id], unique: true
    add_index :categorizations, :application_id
  end
end
