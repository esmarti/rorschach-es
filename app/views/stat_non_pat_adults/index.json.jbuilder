json.array!(@stat_non_pat_adults) do |stat_non_pat_adult|
  json.extract! stat_non_pat_adult, :id, :mean, :mean, :sd, :sd, :min, :min, :max, :max, :freq, :median, :median, :mode, :mode, :sk, :sk, :ku, :ku, :variable
  json.url stat_non_pat_adult_url(stat_non_pat_adult, format: :json)
end
