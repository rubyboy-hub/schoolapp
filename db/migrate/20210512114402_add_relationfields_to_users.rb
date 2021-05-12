class AddRelationfieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :relationship_id, :bigint
  end
end
