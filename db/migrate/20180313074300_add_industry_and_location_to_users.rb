class AddIndustryAndLocationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :industry, :string
    add_column :users, :location, :string
  end
end
