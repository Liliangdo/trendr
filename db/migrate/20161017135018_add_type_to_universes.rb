class AddTypeToUniverses < ActiveRecord::Migration[5.0]
  def change
    add_column :universes, :type, :string
  end
end
