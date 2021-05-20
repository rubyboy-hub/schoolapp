# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.bigint :from
      t.bigint :to
      t.text :comment_text
      t.timestamps
    end
  end
end
