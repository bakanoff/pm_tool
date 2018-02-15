class UpdateTaskTitleDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :title, :string
  end
end
