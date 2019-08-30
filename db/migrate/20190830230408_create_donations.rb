class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.references :requester
      t.references :offerer

      t.timestamps
    end
  end
end
