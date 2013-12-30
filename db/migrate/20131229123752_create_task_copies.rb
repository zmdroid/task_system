class CreateTaskCopies < ActiveRecord::Migration
  def change
    create_table :task_copies do |t|
      t.integer :task_id
      t.integer :publisher_id
      t.date :current_date
      t.integer :state

      t.timestamps
    end
  end
end
