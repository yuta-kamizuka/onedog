class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name,              null: false
      t.text :introduction,        null: false
      t.integer :dog_breed_id,      null: false
      t.integer :age_id,            null: false
      t.integer :sex_id,            null: false
      t.integer :condition_id,      null: false
      t.integer :status,           null: false, default: 1
      t.references :seller,        null: false
      t.references :buyer,          default: ""

      t.timestamps
    end
  end
end
