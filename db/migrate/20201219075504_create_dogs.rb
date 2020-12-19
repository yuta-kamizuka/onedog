class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name,           null: false
      t.text :introduction,     null: false
      t.string :dog_breed,      null: false
      t.integer :age,           null: false
      t.string :sex,            null: false
      t.string :condition,      null: false

      t.timestamps
    end
  end
end
