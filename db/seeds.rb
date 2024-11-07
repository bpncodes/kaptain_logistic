# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Create Admin Users
AdminUser.create!(email: 'admin1@example.com', password: 'password', role: 'admin')
AdminUser.create!(email: 'editor1@example.com', password: 'password', role: 'editor')
AdminUser.create!(email: 'viewer1@example.com', password: 'password', role: 'viewer')
AdminUser.create!(email: 'asdfasdf@asdf.asdf', password: 'asdfasdf', role: 'admin')

puts "Admin users created."

# Create Products
products = [
  {
    name: 'Standard Widget',
    description: 'A high-quality standard widget, perfect for all your widgeting needs. Designed for durability and performance.',
    quantity_in_stock: 100,
    weight: 2.5,
    dimensions: '10x5x2 inches',
    category: 'Widgets',
    price: 19.99,
    supplier: 'Widgets Inc.'
  },
  {
    name: 'Advanced Widget',
    description: 'An advanced widget with enhanced features for the serious user. Includes a built-in widget analyzer.',
    quantity_in_stock: 50,
    weight: 3.0,
    dimensions: '12x6x3 inches',
    category: 'Widgets',
    price: 29.99,
    supplier: 'Widgets Inc.'
  },
  {
    name: 'Eco-Friendly Widget',
    description: 'An eco-friendly widget made from sustainable materials. Perfect for the environmentally conscious consumer.',
    quantity_in_stock: 75,
    weight: 2.0,
    dimensions: '10x5x2 inches',
    category: 'Eco Products',
    price: 24.99,
    supplier: 'Green Widgets Co.'
  },
  {
    name: 'Heavy-Duty Widget',
    description: 'Designed for industrial use, the heavy-duty widget is built to last and withstand tough conditions.',
    quantity_in_stock: 30,
    weight: 5.0,
    dimensions: '14x8x4 inches',
    category: 'Industrial',
    price: 49.99,
    supplier: 'Heavy Industries'
  },
  {
    name: 'Smart Widget',
    description: 'The latest in smart widget technology. Connects to your phone and has customizable settings.',
    quantity_in_stock: 20,
    weight: 1.5,
    dimensions: '8x4x2 inches',
    category: 'Smart Devices',
    price: 99.99,
    supplier: 'Tech Innovations'
  }
]

# Create Products in the Database
products.each do |product_attributes|
  Product.create!(product_attributes)
end

puts "Products created."
