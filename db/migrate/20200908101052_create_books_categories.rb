class CreateBooksCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :books_categories, id: false do |t|
      t.belongs_to :book
      t.belongs_to :category
    end
  end
end
