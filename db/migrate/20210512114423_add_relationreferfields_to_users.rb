# frozen_string_literal: true

class AddRelationreferfieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :relationships, index: true
  end
end
