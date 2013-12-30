class TaskCopy < ActiveRecord::Base

  belongs_to :task

  def self.auto_save
    tasks = Task.where('end_date > ?',Time.now)
    tasks.each do |task|
      task_copy = TaskCopy.new
      task_copy.task_id = task.id
      task_copy.current_date = Time.now
      task_copy.save
    end
  end
end
