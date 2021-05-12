class CreateSubComments < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_comments do |t|
      t.bigint :replied_by
      t.text :reply_comment
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
