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

# Create an admin user
admin = User.create!(
                name: 		'Admin User',
                email: 		'admin@example.com',
                password: 'helloworld',
                role: 		'admin'
)

# Create a member
member = User.create!(
                 name: 		 'Member user',
                 email: 	 'member@example.com',
                 password: 'helloworld'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"