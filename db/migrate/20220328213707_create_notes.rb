class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :tile
      t.text :note
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
