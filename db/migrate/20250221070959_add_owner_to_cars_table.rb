class AddOwnerToCarsTable < ActiveRecord::Migration[8.0]
  def change
    add_column :cars, :owner_id, :integer
  end
end
