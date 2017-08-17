class RenameTypeToGenre < ActiveRecord::Migration[5.0]
  def change
  	rename_column :books, :type, :genre
  end
end
