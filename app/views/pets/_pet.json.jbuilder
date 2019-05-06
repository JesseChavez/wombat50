json.extract! pet, :id, :category_id, :name, :price, :age, :desexed, :description, :created_at, :updated_at
json.url pet_url(pet, format: :json)
