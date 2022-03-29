class RenameTileInNotes < ActiveRecord::Migration[6.1]
  def change
    rename_column :notes, :tile, :title
  end
end
