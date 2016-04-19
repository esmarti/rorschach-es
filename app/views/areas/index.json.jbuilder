json.array!(@areas) do |area|
  json.extract! area, :id, :idSheet, :code, :numZones
  json.url area_url(area, format: :json)
end
