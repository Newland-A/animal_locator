class CreateCompanys < ActiveRecord::Migration[6.0]
  def change
    create_table :companys do |t|
      t.string :location
      
      t.timestamps null: false
    end
  end
end
