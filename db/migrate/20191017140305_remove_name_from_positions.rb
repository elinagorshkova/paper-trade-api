class RemoveNameFromPositions < ActiveRecord::Migration[5.2]
  def change
    remove_column :positions, :name, :string
  end
end
