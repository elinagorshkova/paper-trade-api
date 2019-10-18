class AddSideToPositions < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :side, :string
  end
end
