class CreateVehicle < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.text :description
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
