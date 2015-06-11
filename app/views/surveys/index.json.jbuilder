json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :author_id
  json.url survey_url(survey, format: :json)
end
