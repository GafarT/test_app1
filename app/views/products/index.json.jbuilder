json.array!(@products) do |product|
  json.extract! product, :name, :description, :sub_category_id, :price, :waranty_expire_at, :brand, :serial
  json.url product_url(product, format: :json)
end