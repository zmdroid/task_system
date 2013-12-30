json.array!(@admin_task_types) do |admin_task_type|
  json.extract! admin_task_type, :id, :name, :remark
  json.url admin_task_type_url(admin_task_type, format: :json)
end
