# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Author.destroy_all
Magazine.destroy_all

a1 = Author.create(
    name: "Bob Jones",
    age: 45
    )

a2 = Author.create(
    name: "Diana Lady",
    age: 22
    )

m1 = Magazine.create(name: "Home and Garden", category: "Home and Garden")
m2 = Magazine.create(name: "Oprah", category: "Lifestyle")
m4 = Magazine.create(name: "Lifestyle", category: "Lifestyle")
m3 = Magazine.create(name: "Sports", category: "Sports")

Article.create(title: "How to Code", author: a1, magazine: m1)
Article.create(title: "More reading", author: a1, magazine: m2)
Article.create(title: "FLowers", author: a2, magazine: m1)
Article.create(title: "Sport Stuff", author: a2, magazine: m3)
Article.create(title: "Ahmed is cool", author: a1, magazine: m2)
Article.create(title: "Ahmed is cool", author: a1, magazine: m4)