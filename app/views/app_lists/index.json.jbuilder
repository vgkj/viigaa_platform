json.array!(@app_lists) do |app_list|
  json.extract! app_list, :app_title
  json.url app_list_url(app_list, format: :json)
end