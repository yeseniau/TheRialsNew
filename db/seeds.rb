# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
    User.create(
      username: Faker::Internet.user_name,
      email: Faker::Internet.email,
      password: Faker::Internet.password
    )
  end

20.times do
  Notice.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
    user_id: rand(1..10)
  )
end
20.times do
  Comment.create(
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
    image: 
    user_id: rand(1..10),
    notice_id: rand(1..20)
  )
end