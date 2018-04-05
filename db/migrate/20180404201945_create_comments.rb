class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :destination, foreign_key: true 
      t.string :user_name

      t.timestamps
    end
  end
end
