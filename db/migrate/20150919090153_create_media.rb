class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.references :user, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true
      t.string :file
      t.string :md5_hash
      t.text :title
      t.string :type
      t.integer :plays

      t.timestamps null: false
    end
  end
end
