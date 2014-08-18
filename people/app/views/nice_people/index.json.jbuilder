json.array!(@nice_people) do |nice_person|
  json.extract! nice_person, :id, :name, :city, :hair, :age
  json.url nice_person_url(nice_person, format: :json)
end
