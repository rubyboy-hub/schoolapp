class AddRelationreferfieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :relationships, index: true
  end
end
