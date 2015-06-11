json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :author_id, :publish, :description
  json.url survey_url(survey, format: :json)
end
