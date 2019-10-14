class RemoveUserFromPortfolios < ActiveRecord::Migration[5.2]
  def change
    remove_reference :portfolios, :user, foreign_key: true
  end
end
