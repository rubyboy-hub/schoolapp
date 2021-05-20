# frozen_string_literal: true

class AddReferenceToComment < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :comments, :users, column: :from
    add_foreign_key :comments, :users, column: :to
  end
end
