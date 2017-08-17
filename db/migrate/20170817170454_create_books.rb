class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :pages
      t.text :review
      t.string :type
      t.string :category

      t.timestamps
    end
  end
end
