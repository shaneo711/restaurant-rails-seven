# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."
puts "------------------------"
puts "Creating restaurants..."
5.times do
  restaurant = Restaurant.new(
    {
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address,
      phone: Faker::PhoneNumber.cell_phone,
      image_url: 'http://sushibarkakizaki.com/wp-content/uploads/2017/06/kaki_top1-2.jpg',
      user_id: User.last.id
    }
  )
  restaurant.save!
  puts "Restaurant ##{restaurant.id} created!"
  puts "Seeding done!"
end
