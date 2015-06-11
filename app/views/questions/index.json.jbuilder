json.array!(@questions) do |question|
  json.extract! question, :id, :name, :value, :survey_id, :required, :number, :description
  json.url question_url(question, format: :json)
end
