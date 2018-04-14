# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

peru = Country.find_or_create_by!(name: 'Peru', continent: 'South America', costs: '2/5', tips: 'have fun and stuff', panorama: "http://res.cloudinary.com/djx0t6jww/image/upload/v1523721043/IMG_0921.jpg", image: "https://c1.staticflickr.com/8/7107/7034974831_69011449de_b.jpg") 
myanmar = Country.find_or_create_by!(name: 'Myanmar', continent: "Asia", costs: "2/5", tips: "do stuff", panorama: "http://res.cloudinary.com/djx0t6jww/image/upload/v1523721412/IMG_1489.jpg", image: "https://stat.ameba.jp/user_images/20130323/11/tanah-air/13/00/j/o0630042012469255045.jpg?caw=800")
philippines = Country.find_or_create_by!(name: 'Philippines', continent: 'Asia', costs: '2/5', tips: "go to the beach", panorama: "http://res.cloudinary.com/djx0t6jww/image/upload/v1523721409/IMG_0835.jpg", image: "https://c1.staticflickr.com/5/4121/4755336720_96a62f8cd3_b.jpg")
kenya = Country.find_or_create_by!(name: "Kenya", continent: "Africa", costs: "4/5", tips: "avoid scams", panorama: "http://res.cloudinary.com/djx0t6jww/image/upload/v1523721411/IMG_0114.jpg", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Giraffes_in_Masai_Mara.jpg/1280px-Giraffes_in_Masai_Mara.jpg")
mongolia = Country.find_or_create_by!(name: "Mongolia", continent: "Asia", costs: "3/5", tips: "get out of the city", panorama: "http://res.cloudinary.com/djx0t6jww/image/upload/v1523721412/IMG_1512.jpg", image: "https://upload.wikimedia.org/wikipedia/commons/2/25/Mongolia_095.JPG")

machu_picchu = Destination.find_or_create_by!(name: "Machu Picchu", country_id: peru.id, what_to_do: "go for a walk", panorama: "http://dl.dropboxusercontent.com/s/xeabh59jyti2glu/IMG_0946.JPG", image: "https://upload.wikimedia.org/wikipedia/commons/e/eb/Machu_Picchu%2C_Peru.jpg", is_feature?: true)
bagan = Destination.find_or_create_by!(name: "Bagan", country_id: myanmar.id, what_to_do: "look at temples", panorama: "http://dl.dropboxusercontent.com/s/qmy5crvud3kneis/IMG_1489.JPG", image: "https://upload.wikimedia.org/wikipedia/commons/a/a1/Buddhist_Stupas_in_Bagan%2C_Myanmar.jpg", is_feature?: true)
el_nido = Destination.find_or_create_by!(name: "EL Nido", country_id: philippines.id, what_to_do: "swim", panorama: "http://res.cloudinary.com/djx0t6jww/image/upload/v1523721410/IMG_0850_2.jpg", image: "https://upload.wikimedia.org/wikipedia/commons/4/43/El-nido_palawan_Top_of_the_World_-_panoramio.jpg", is_feature?: true)
nairobi = Destination.find_or_create_by!(name: "Nairobi", country_id: kenya.id, what_to_do: "look at animals", panorama: "http://dl.dropboxusercontent.com/s/26zvhqlywykb5y8/IMG_0538.JPG", image: "https://upload.wikimedia.org/wikipedia/commons/2/21/Giraffe_-_Skyline_-_Nairobi_-_Park.jpg", is_feature?: true)
kharkhorin = Destination.find_or_create_by!(name: "Kharkhorin", country_id: mongolia.id, what_to_do: "ride horses", panorama: "http://res.cloudinary.com/djx0t6jww/image/upload/v1523722587/IMG_1729.jpg", image: "https://upload.wikimedia.org/wikipedia/commons/a/a2/Biandintz_eta_zaldiak_-_modified2.jpg", is_feature?: false)
lamu = Destination.find_or_create_by!(name: "Lamu", country_id: kenya.id, what_to_do: "go in a boat", panorama: "http://dl.dropboxusercontent.com/s/zzx0xf6j0mozk3p/December%2520%25282%2529.JPG", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZkQQH2qKhOG5Jk_pbfSz5UdXDXNhDUph3qINbAGQvbQQ51vR9", is_feature?: false)

Tip.find_or_create_by!({name: "How to save when you're travelling", information: "Don't waste money and stuff", image: "https://images.pexels.com/photos/69866/pexels-photo-69866.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"})
Tip.find_or_create_by!({name: "How to travel solo", information: "Stay with a group when you can", image: "https://c1.staticflickr.com/8/7222/7239296824_8ed72b90f6_b.jpg"})
Tip.find_or_create_by!({name: "Avoiding travel sickness", information: "minimize street food consumption", image: "http://www.creative-commons-images.com/highway-signs/images/travel-insurance.jpg"})
Tip.find_or_create_by!({name: "What to pack", information: "Not too much", image: "https://c1.staticflickr.com/7/6180/6192964557_8033382a46_b.jpg"})