class CarsTable < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string  :make
      t.string  :model
      t.integer :year
      t.string  :picture_url
      t.integer :gas_mileage
    end
  end
end
