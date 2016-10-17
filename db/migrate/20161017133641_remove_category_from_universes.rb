class RemoveCategoryFromUniverses < ActiveRecord::Migration[5.0]
  def change
    remove_column :universes, :category, :string
  end
end
