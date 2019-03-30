# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categorys = Category.create(
  [
    {
      title: 'Cafes'
    },
    {
      title: 'Restaurants'
    },
    {
      title: 'Pubs'
    },
    {
      title: 'Taverns'
    }
  ]
)

users = User.create(
  [
    {
      name: 'Айбек',
      email: 'ibekable@gmail.com',
      password: 'qwerty'
    },
    {
      name: 'Алдияр',
      email: 'aldiyaramrenov@gmail.com',
      password: 'qwerty'
    },
    {
      name: 'Мухаммадали',
      email: 'muhamadali@gmail.com',
      password: 'qwerty'
    },
    {
      name: 'Давид',
      email: 'davidlisvd@gmail.com',
      password: 'qwerty'
    }
  ]
)

places = Place.create(
  [
    {
      title: 'KFC',
      description: 'so good',
      agreement: true
    },
    {
      title: 'Burger King',
      description: 'so good',
      agreement: true
    },
    {
      title: 'Hardyys',
      description: 'so good',
      agreement: true
    },
    {
      title: 'McDonalds',
      description: 'so good',
      agreement: true
    }
  ]
)