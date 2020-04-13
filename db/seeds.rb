# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# users #
# 5.times do |n|
#   User.create!(
#     name: "test#{n + 1}",
#     email: "test#{n + 1}@mail.com",
#     password: "test#{(n+1).to_s+(n+1).to_s}",
#     image: open("#{Rails.root}/app/assets/images/users/no_image.png")
#   )
# end

# alc_category #

AlcCategory.create!(
  [
    {name:"ビール"},
    {name:"ハイボール"},
    {name:"レモンサワー"},
    {name:"日本酒"},
    {name:"焼酎"},
    {name:"ワイン"},
    {name:"スパークリングワイン"},
    {name:"カクテル"},
    {name:"その他"}
  ]
)

# MenuCategory #

MenuCategory.create!(
  [
    {name:"定番"},
    {name:"ユニーク"},
    {name:"簡単"},
    {name:"自作"},
    {name:"おすすめ"}
  ]
)