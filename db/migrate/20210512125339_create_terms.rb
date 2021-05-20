# frozen_string_literal: true

class CreateTerms < ActiveRecord::Migration[6.1]
  def change
    create_table :terms do |t|
      t.text :name

      t.timestamps
    end
  end
end
