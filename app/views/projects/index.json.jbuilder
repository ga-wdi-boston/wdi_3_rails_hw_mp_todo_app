json.array!(@projects) do |project|
  json.extract! project, :id, :name, :type
  json.url project_url(project, format: :json)
end
