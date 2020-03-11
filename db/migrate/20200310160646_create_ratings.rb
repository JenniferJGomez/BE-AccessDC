class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.float :rating
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
