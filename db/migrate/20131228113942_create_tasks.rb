class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.integer :task_type_id
      t.integer :publisher_id
      t.date :start_date
      t.date :end_date
      t.decimal :max_price , :precision => 8, :scale => 2, :default =>20
      t.decimal :min_price , :precision => 8, :scale => 2, :default =>20
      t.integer :max_person
      t.integer :min_person
      t.text :description
      t.string :location
      t.integer :state , :default=>0

      t.timestamps
    end
  end
end
