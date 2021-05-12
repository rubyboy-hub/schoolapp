class AddOtherfieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :text
    add_column :users, :gender, :text
    add_column :users, :address, :text
    add_column :users, :age, :bigint
  end
end
