class RemoveTypeFromUniverses < ActiveRecord::Migration[5.0]
  def change
    remove_column :universes, :type, :string
  end
end
