json.array!(@zones) do |zone|
  json.extract! zone, :id, :coord_x, :coord_y, :width, :height, :z_index, :bg_image
  json.url zone_url(zone, format: :json)
end
