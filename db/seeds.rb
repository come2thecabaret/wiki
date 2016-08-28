10.times do
  User.create!(
  email: Faker::Internet.email,
  username: Faker::Internet.user_name,
  password: Faker::Internet.password(8),
  name: Faker::Name.name
  )
end
users = User.all

25.times do
  Article.create!(
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(3),
  user: users.sample
  )
end

puts "Seeded"
puts "#{User.count} users created"
puts "#{Article.count} articles created"
