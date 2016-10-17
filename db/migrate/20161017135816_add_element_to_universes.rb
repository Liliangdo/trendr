class AddElementToUniverses < ActiveRecord::Migration[5.0]
  def change
    add_column :universes, :element, :string
  end
end
