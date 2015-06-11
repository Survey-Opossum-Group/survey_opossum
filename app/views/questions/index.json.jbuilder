json.array!(@questions) do |question|
  json.extract! question, :id, :name, :value, :survey_id
  json.url question_url(question, format: :json)
end
