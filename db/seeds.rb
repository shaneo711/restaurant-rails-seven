# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed users
User.create!(
  email: 'user1@example.com',
  password: 'password',
  first_name: 'Shane',
  profile_image: 'https://avatars.githubusercontent.com/u/18519818'
)

# Seed lists
List.create!(
  name: 'My favorite restaurants',
  description: 'A list of my favorite restaurants in the city',
  user_id: User.first.id,
  is_private: false
)

List.create!(
  name: 'Date night spots',
  description: 'Romantic restaurants for date night',
  user_id: User.first.id,
  is_private: true
)

# Seed restaurants for list 1
Restaurant.create!(
  name: 'The Best Italian Restaurant',
  address: '123 Main St.',
  phone: '555-1234',
  image_url: 'https://images.unsplash.com/photo-1506280754576-f6fa8a873550?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=calum-lewis-rPkgYDh2bmo-unsplash.jpg&w=640',
  list_id: List.first.id,
  user_id: User.first.id,
  cuisine_type: 'Italian',
  description: 'The best Italian food in town!'
)

Restaurant.create!(
  name: 'The Best Japanese Restaurant',
  address: '123 Elm St.',
  phone: '555-1235',
  image_url: 'https://images.unsplash.com/photo-1580822184713-fc5400e7fe10?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=marina-grynykha-FBgCgJhPO2I-unsplash.jpg&w=640',
  list_id: List.first.id,
  user_id: User.first.id,
  cuisine_type: 'Japanese',
  description: 'The best Japanese food in town!'
)

Restaurant.create!(
  name: 'The Best Greek Restaurant',
  address: '123 Main St.',
  phone: '555-1234',
  image_url: 'https://images.unsplash.com/photo-1554998171-89445e31c52b?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=louis-hansel-K47107aP8UU-unsplash.jpg&w=640',
  list_id: List.first.id,
  user_id: User.first.id,
  cuisine_type: 'Greek',
  description: 'The best Greek food in town!'
)

Restaurant.create!(
  name: 'The Best Thai Restaurant',
  address: '123 Main St.',
  phone: '555-1234',
  image_url: 'https://images.unsplash.com/photo-1617093727343-374698b1b08d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
  list_id: List.first.id,
  user_id: User.first.id,
  cuisine_type: 'Thai',
  description: 'The best Thai food in town!'
)

Restaurant.create!(
  name: 'The Best Indian Restaurant',
  address: '123 Main St.',
  phone: '555-1234',
  image_url: 'https://images.unsplash.com/photo-1567337710282-00832b415979?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=lai-yuching-WxePxgrIJbQ-unsplash.jpg&w=640',
  list_id: List.first.id,
  user_id: User.first.id,
  cuisine_type: 'Indian',
  description: 'The best Indian food in town!'
)

# Restaurants for list 2
Restaurant.create!(
  name: 'Steakhouse Grill',
  address: '456 Main St.',
  phone: '555-5678',
  image_url: 'https://images.unsplash.com/photo-1630071074184-a879a29c51bb?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=fabio-alves-IkcWRgegT3s-unsplash.jpg&w=640',
  list_id: List.last.id,
  user_id: User.last.id,
  cuisine_type: 'Steakhouse',
  description: 'Perfect for a romantic date night!'
)

Restaurant.create!(
  name: 'Sushi Bar',
  address: '456 Main St.',
  phone: '555-5678',
  image_url: 'https://images.unsplash.com/photo-1611762687807-7cdd09aef422?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=jennifer-latuperisa-andresen-54iqhwYbNyI-unsplash.jpg&w=640',
  list_id: List.last.id,
  user_id: User.last.id,
  cuisine_type: 'Sushi',
  description: 'Perfect for a romantic date night!'
)
