class AddStateToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :state, :integer
  end
end
