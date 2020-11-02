class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.boolean :gender #how can I create multiple options for gender
      t.integer :weight
      t.string :species
      t.string :breed
      t.string :color
      t.text :medical_info
       
      t.timestamps
    end
  end
end
