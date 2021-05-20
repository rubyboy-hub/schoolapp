# frozen_string_literal: true

class CreateStandards < ActiveRecord::Migration[6.1]
  def change
    create_table :standards do |t|
      t.text :name

      t.timestamps
    end
  end
end
