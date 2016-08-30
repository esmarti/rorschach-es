json.array!(@interpretations) do |interpretation|
  json.extract! interpretation, :id, :direction, :formalQuality, :name, :description
  json.url interpretation_url(interpretation, format: :json)
end
