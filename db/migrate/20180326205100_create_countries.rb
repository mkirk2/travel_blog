class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :continent
      t.string :costs
      t.string :tips
      t.string :panorama
      t.string :image
    end
  end
end
