class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :role, index: true
    end
  end
end
