json.array!(@tasks) do |task|
  json.extract! task, :id, :subject, :lead, :description, :due_date, :priority, :status, :group_id
  json.url task_url(task, format: :json)
end
