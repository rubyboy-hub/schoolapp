class AddClassteacherToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :class_teach_id, :bigint, null: true, index: true
    add_foreign_key :users, :users, column: :class_teach_id
  end
end
