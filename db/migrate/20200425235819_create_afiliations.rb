class CreateAfiliations < ActiveRecord::Migration[6.0]
  def change
    create_table :afiliations do |t|
      t.string :name

      t.timestamps
    end
  end
end
