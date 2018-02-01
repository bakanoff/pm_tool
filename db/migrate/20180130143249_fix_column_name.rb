class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tasks, :status_id, :task_status_id
  end
end
