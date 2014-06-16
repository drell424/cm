json.array!(@projects) do |project|
  json.extract! project, :id, :description, :user_id, :zip
  json.url project_url(project, format: :json)
end
