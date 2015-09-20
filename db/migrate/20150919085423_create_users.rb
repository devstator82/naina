class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :uid
      t.string :auth_token
      t.string :auth_provider
      t.integer :reputation

      t.timestamps null: false
    end
  end
end
