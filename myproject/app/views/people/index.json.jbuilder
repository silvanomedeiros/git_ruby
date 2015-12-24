json.array!(@people) do |person|
  json.extract! person, :id, :name, :cpf, :gender, :email, :phone
  json.url person_url(person, format: :json)
end
