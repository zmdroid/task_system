class RemovePublisherIdToTaskCopy < ActiveRecord::Migration
  def change
    remove_column :task_copies, :publisher_id
  end
end
