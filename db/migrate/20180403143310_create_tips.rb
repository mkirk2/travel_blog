class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.string :name
      t.string :information
      t.string :image
    end
  end
end
