# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
List.create(
  {
    name: "Gang Gang",
    description: 'Restaurants for the calendar app.',
    image_url: 'https://static.thehoneycombers.com/wp-content/uploads/sites/2/2022/03/sydney-restaurants-woodcut.png',
    user_id: 1
  }
)
5.times do
  Restaurant.create(
    {
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address,
      phone: Faker::PhoneNumber.cell_phone,
      image_url: 'http://sushibarkakizaki.com/wp-content/uploads/2017/06/kaki_top1-2.jpg',
      user_id: 1,
      list_id: 1
    }
  )
end
