json.array!(@lists) do |list|
  json.extract! list, :id, :name, :project
  json.url list_url(list, format: :json)
end
