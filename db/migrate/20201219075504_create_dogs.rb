class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name,              null: false
      t.text :introduction,        null: false
      t.string :dog_breed_id,      null: false
      t.string :age_id,            null: false
      t.string :sex_id,            null: false
      t.string :condition_id,      null: false

      t.timestamps
    end
  end
end
