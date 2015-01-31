json.array!(@groups) do |group|
  json.extract! group, :id, :title, :due_date, :leads, :priority, :status, :project_id
  json.url group_url(group, format: :json)
end
