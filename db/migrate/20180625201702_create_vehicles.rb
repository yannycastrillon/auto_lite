class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string :model
      t.string :make
      t.integer :year
      t.integer :times_view
      t.string :pic_url

      t.timestamps
    end
  end
end
