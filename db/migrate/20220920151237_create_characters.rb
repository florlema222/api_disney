class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.float :weight
      t.text :history
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
