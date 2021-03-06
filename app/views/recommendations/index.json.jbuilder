json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :id, :intention, :by_role, :user_id, :place_id, :time, :day
  json.url recommendation_url(recommendation, format: :json)
end
