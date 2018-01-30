class User < ApplicationRecord
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :user_tasks
  has_many :tasks, through: :user_tasks
  has_many :comments
end
