# frozen_string_literal: true

class CreateTeacherInCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_in_charges do |t|
      t.references :subject, null: false, foreign_key: true
      t.references :standard, null: false, foreign_key: true
      t.bigint :teacher_id

      t.timestamps
    end
  end
end
