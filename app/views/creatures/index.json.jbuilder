json.array!(@creatures) do |creature|
  json.extract! creature, :id, :name, :health
  json.url creature_url(creature, format: :json)
end
