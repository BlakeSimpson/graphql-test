class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :genre
      t.boolean :in_stock
      t.float :price
      t.integer :pages
      t.references :author

      t.timestamps null: false
    end
  end
end
