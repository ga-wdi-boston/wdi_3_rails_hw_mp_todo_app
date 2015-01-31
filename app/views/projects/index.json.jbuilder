json.array!(@projects) do |project|
  json.extract! project, :id, :title, :due_date, :status, :leads
  json.url project_url(project, format: :json)
end
