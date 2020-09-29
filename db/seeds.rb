# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
photos = [
       {
        name: "zozo",
        imageUrl: "https://i.guim.co.uk/img/media/20098ae982d6b3ba4d70ede3ef9b8f79ab1205ce/0_0_969_1005/master/969.jpg?width=700&quality=85&auto=format&fit=max&s=470657ebd2a0e704df88997d393aea15",
        likes: 0
       },
       {
        name: "Fulia",
        imageUrl: "https://www.dogsqueensland.org.au/media/1003/buying-a-dog.jpg",
        likes: 0
       },
       {
        name: "Snow",
        imageUrl: "https://www.thesprucepets.com/thmb/sfuyyLvyUx636_Oq3Fw5_mt-PIc=/3760x2820/smart/filters:no_upscale()/adorable-white-pomeranian-puppy-spitz-921029690-5c8be25d46e0fb000172effe.jpg",
        likes: 0
       },
       {
        name: "The protector",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSnviRH-MAE1UgsxWb0NiiS7ZqR1CUI76YwEw&usqp=CAU",
        likes: 0
       },
       {
        name: "winter",
        imageUrl: "https://i0.wp.com/www.simplypets.com/wp-content/uploads/2019/05/Fluffy-Dog.jpg?fit=790%2C539&ssl=1",
        likes: 0
       }

]
photos.each do |movie|
 Photo.create!(movie)
end