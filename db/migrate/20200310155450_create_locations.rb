class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :img_url
      t.string :url

      t.timestamps
    end
  end
end
