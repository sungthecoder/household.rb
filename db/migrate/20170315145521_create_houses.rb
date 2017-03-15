class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal_code

      t.timestamps
    end
  end
end
