class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :src,      null: false
      t.references :dog,  null: false

      t.timestamps
    end
  end
end
