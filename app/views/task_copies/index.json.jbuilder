json.array!(@task_copies) do |task_copy|
  json.extract! task_copy, :id, :task_id, :publisher_id, :current_date, :state
  json.url task_copy_url(task_copy, format: :json)
end
