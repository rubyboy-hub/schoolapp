# frozen_string_literal: true

class AddReferenceParentToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :parent_id, :bigint, null: true, index: true
    add_foreign_key :users, :users, column: :parent_id
  end
end
