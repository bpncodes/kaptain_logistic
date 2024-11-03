json.extract! product, :id, :name, :description, :quantity_in_stock, :weight, :dimensions, :category, :price, :supplier, :created_at, :updated_at
json.url product_url(product, format: :json)
