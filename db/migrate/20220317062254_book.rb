class Book < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.timestamps
    end
    add_reference :books, :friends, index: false
  end
end
