class CreateAuthorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :authorizations do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.integer :user_id, null: false
      t.string :token, null: false
      t.string :secret, null: false
      t.string :name, null: false
      t.string :link, null: false

      t.timestamps
    end
  end
end
