class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :address
      t.date :date_found

      t.timestamps
    end
  end
end
