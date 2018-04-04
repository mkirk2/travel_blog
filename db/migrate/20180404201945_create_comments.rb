class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :comments
      t.integer :destination_id
      t.integer :user_id

      t.timestamp
    end
  end
end
