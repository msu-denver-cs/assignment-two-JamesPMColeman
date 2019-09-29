class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.references :make, foreign_key: true
      t.string :model
      t.integer :VIN

      t.timestamps
    end
  end
end
