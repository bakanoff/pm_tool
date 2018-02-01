class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :title
      t.belongs_to :project, index: true
      t.belongs_to :priority, index: true
      t.datetime :end_date
      t.text :description
      t.belongs_to :status, index: true

      t.timestamps
    end
  end
end
