class CreateRefuges < ActiveRecord::Migration[5.2]
  def change
    create_table :refuges do |t|
      t.string :name
      t.string :city
      t.string :adress
      t.integer :capacity

      t.timestamps
    end
  end
end
