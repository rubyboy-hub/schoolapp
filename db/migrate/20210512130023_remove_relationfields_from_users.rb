# frozen_string_literal: true

class RemoveRelationfieldsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :relationship_id, :string
  end
end
