class AddNewRoleToRoles < ActiveRecord::Migration[6.1]
  def change
    Role.create! do |u|
      u.name     = 'superadmin'
    end
  end
end
