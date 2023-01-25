require 'faker'

user_one = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_two = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_three = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_four = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

user_five = User.create(name: Faker::Name.name, photo: Faker::Avatar.image(slug: "user-#{i+1}", size: "300x300", format: "jpg", set: "set1", bgset: "bg1"), bio: Faker::Lorem.paragraph(sentence_count: 6)

post_one = Post.create(author: user_one, title: Faker::Lorem.paragraph(sentence_count: 1), text: Faker::Lorem.paragraph(sentence_count: 40))

post_two = Post.create(author: user_two, title: Faker::Lorem.paragraph(sentence_count: 1), text: Faker::Lorem.paragraph(sentence_count: 40))

post_three = Post.create(author: user_three, title: Faker::Lorem.paragraph(sentence_count: 1), text: Faker::Lorem.paragraph(sentence_count: 40))

post_four = Post.create(author: user_four, title: Faker::Lorem.paragraph(sentence_count: 1), text: Faker::Lorem.paragraph(sentence_count: 40))

post_five = Post.create(author: user_five, title: Faker::Lorem.paragraph(sentence_count: 1), text: Faker::Lorem.paragraph(sentence_count: 40))