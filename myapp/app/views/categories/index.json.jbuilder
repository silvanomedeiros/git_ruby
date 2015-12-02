json.array!(@categories) do |category|
  json.extract! category, :id, :name, :descricao, :status
  json.url category_url(category, format: :json)
end
