json.array!(@notes) do |note|
  json.extract! note, :id, :note, :task
  json.url note_url(note, format: :json)
end
