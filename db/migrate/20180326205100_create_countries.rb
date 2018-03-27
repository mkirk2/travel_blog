class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :location
      t.string :when_to_visit
      t.string :price
    end
  end
end
