json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :id, :eat, :drink, :explore, :party, :by_role, :user_id, :place_id
  json.url recommendation_url(recommendation, format: :json)
end