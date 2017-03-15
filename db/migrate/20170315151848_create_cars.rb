class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer    :year
      t.string     :make_id
      t.string     :make_display
      t.string     :model
      t.string     :license_plate
      t.references :driver, index: true
      t.references :house,  index: true

      t.timestamps
    end
  end
end
