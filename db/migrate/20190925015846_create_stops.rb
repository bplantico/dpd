class CreateStops < ActiveRecord::Migration[5.2]
  def change
    create_table :stops do |t|
      t.string :incident_number
      t.string :priority_description
      t.string :problem
      t.string :address
      t.string :call_class
      t.datetime :time_phonepickup
      t.string :call_disposition
      t.float :geo_x
      t.float :geo_y
      t.float :geo_lon
      t.float :geo_lat
      t.string :district_id
      t.string :neighborhood_name

      t.timestamps
    end
  end
end
