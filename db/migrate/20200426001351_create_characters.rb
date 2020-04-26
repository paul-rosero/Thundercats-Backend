class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :weapons
      t.string :species
      t.string :overview
      t.boolean :favorite
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :afiliation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
