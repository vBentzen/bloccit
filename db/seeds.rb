# Create Users
5.times do
  User.create!(
  	name: Faker::LordOfTheRings.character,
  	email: Faker::Internet.email,
  	password: Faker::Lorem.sentence
  )
end
users = User.all

# Create Topics
15.times do
  Topic.create!(
		name: 			 Faker::StarWars.character,
    description: Faker::Lorem.paragraph
  )
end
topics = Topic.all

# Create Posts
50.times do
	Post.create!(
    user: users.sample,
		topic:  topics.sample,
		title: Faker::StarWars.character,
		body:  Faker::Lorem.paragraph
	)
end
posts = Post.all

# Create Comments
100.times do
	Comment.create!(
		post: posts.sample,
		body: Faker::StarWars.quote
	)
end

user = User.first
user.update_attributes!(
        email: 'test@test.com',
        password: 'Flammer'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"