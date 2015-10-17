json.array!(@landio_items) do |landio_item|
  json.extract! landio_item, :id, :description
  json.url landio_item_url(landio_item, format: :json)
end
