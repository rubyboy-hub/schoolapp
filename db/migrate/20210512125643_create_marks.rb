class CreateMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.bigint :stud_id
      t.bigint :sub_id
      t.bigint :mark
      t.references :term, null: false, foreign_key: true

      t.timestamps
    end
  end
end
