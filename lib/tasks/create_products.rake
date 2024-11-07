# lib/tasks/create_products.rake
namespace :db do
  desc "Create multiple products"
  task create_products: :environment do
    10.times do |i|
	  Product.create(
    name: "Premium Widget #{i + 1}",
    description: ["This is a prem","Very good product","Best in the business","Imported from italy"].sample,
    quantity_in_stock: rand(1..100),
    weight: rand(1.0..10.0).round(2),  # Random weight between 1.0 and 10.0
    dimensions: "#{rand(5..15)}x#{rand(5..15)}x#{rand(5..15)} cm",  # Random dimensions
    category: ["Electronics", "Furniture", "Clothing", "Food"].sample,
    price: rand(10.0..100.0).round(2),  # Random price between 10.0 and 100.0
    supplier: "Supplier #{i + 1}"
  )

    end
    puts "10 products created."
  end
end
