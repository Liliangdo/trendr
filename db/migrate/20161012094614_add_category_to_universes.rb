class AddCategoryToUniverses < ActiveRecord::Migration[5.0]
  def change
    add_column :universes, :category, :string
  end
end
