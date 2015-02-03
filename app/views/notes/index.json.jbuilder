json.array!(@notes) do |note|
  json.extract! note, :id, :note_text, :text_id
  json.url note_url(note, format: :json)
end
