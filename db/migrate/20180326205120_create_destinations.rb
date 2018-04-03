class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :country_id
      t.string :what_to_do
      t.string :panorama
      t.string :image
      t.boolean :is_feature?
    end
  end
end
