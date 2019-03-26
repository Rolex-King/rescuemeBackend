class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.integer :age
      t.integer :role
      t.string :nif
      t.string :gender

      t.timestamps
    end
  end
end
