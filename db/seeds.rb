# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product1 = Product.new(name: "dog treats", price: 3, description: "keeps your dog from tearing up your socks", image_url: "https://www.google.com/search?q=beggin+strips&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjI35CYmOXgAhVHQq0KHR5fCcUQ_AUIDigB&biw=1572&bih=819#")

product1.save
