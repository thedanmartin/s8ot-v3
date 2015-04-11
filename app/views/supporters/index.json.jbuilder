json.array!(@supporters) do |supporter|
  json.extract! supporter, :id, :name, :years_traveling, :ejections
  json.url supporter_url(supporter, format: :json)
end
