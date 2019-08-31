class AddCategoryToDonation < ActiveRecord::Migration[5.2]
  def change
    add_reference :donations, :category, foreign_key: true
  end
end
