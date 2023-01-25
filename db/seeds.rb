require 'faker'

user_one = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_two = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_three = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_four = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_five = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)