class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.boolean :is_vet
      t.boolean :is_owner
      t.integer :owner_id
      t.index ["username"], name: "index_users_on_username", unique: true

      t.timestamps null: false
    end
  end
end
