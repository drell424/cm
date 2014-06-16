json.array!(@quotes) do |quote|
  json.extract! quote, :id, :user_id, :project_id, :price, :details
  json.url quote_url(quote, format: :json)
end
