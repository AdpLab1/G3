class CreateMyBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :my_books do |t|
      t.string :title, foreign_key: true
      t.date :publication_date, foreign_key: true
      t.references :author , foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
