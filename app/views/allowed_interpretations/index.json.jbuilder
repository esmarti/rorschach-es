json.array!(@allowed_interpretations) do |allowed_interpretation|
  json.extract! allowed_interpretation, :id, :name, :description, :direction, :formal_quality
  json.url allowed_interpretation_url(allowed_interpretation, format: :json)
end
