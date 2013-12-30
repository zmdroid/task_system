class Task < ActiveRecord::Base

  belongs_to :publisher
  belongs_to :task_type
  has_many :task_copy
end
