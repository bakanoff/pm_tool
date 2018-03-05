# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Priority.create!(label: 'Priority-1')
TaskStatus.create!(label: 'Low')
Project.create!(title: 'Project-1')
Task.create!(title: 'Task-1.1', project: Project.last, priority: Priority.last, task_status: TaskStatus.last)
Task.create!(title: 'Task-1.2', project: Project.last, priority: Priority.last, task_status: TaskStatus.last)
# Project.create!(title: 'Project-2')
# Task.create!(title: 'Task-2.1', project_id: Project.last.id)
# Task.create!(title: 'Task-2.2', project_id: Project.last.id)