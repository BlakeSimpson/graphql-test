class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :total_books

      t.timestamps null: false
    end
  end
end
