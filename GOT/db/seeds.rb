# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

lannister = House.create(title:"Lannister", img_url:"http://bit.ly/2lDPRtp")
stark = House.create(title:"Stark", img_url:"http://bit.ly/2mlDstP")
targaryen = House.create(title:"Targaryen", img_url:"http://bit.ly/2kUTMVF")
tyrell = House.create(title:"Tyrell", img_url:"http://bit.ly/2li4PV0")

Character.create(name: "Cersei", img_url:"http://bit.ly/2l7W9PO", house: lannister)
Character.create(name: "Arya", img_url:"http://bit.ly/2li7XjE", house: stark)
Character.create(name: "Rhaenyra", img_url:"http://bit.ly/2kUMVvo", house: targaryen)
Character.create(name: "Edmyn", img_url:"http://bit.ly/2mttwxX", house: tyrell)
