json.array!(@tasks) do |task|
  json.extract! task, :id, :task_name, :task_type_id, :publisher_id, :start_date, :end_date, :max_price, :min_price, :max_person, :min_person, :description, :location, :state
  json.url task_url(task, format: :json)
end
