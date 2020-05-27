class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :stop_id
      t.string :stop_code
      t.string :stop_name
      t.decimal :stop_lat, precision: 10, scale: 6
      t.decimal :stop_lon, precision: 10, scale: 6
      t.string :location_type
      t.string :parent_station

      t.timestamps
    end
  end
end
