require 'faker'

10.times do
	City.create(name: Faker::GameOfThrones.city, zip: Faker::Address.zip_code)
end

10.times do
	User.create(first_name: Faker::GameOfThrones.character, last_name: Faker::StarWars.character, description: Faker::Lorem.paragraphs, age: rand(20..40), email: Faker::Internet.free_email, city: City.all.sample)
end

20.times do
	Potin.create(title: Faker::NewGirl.quote, content: Faker::Lorem.paragraphs(4), date: Faker::Date.backward(15), user: User.all.sample)
end

10.times do
	Tag.create(title: Faker::Hacker.adjective)
end

Potin.all.each do |potin|
	potin.tag << Tag.all.sample
end

20.times do 
	Comment.create(content: Faker::Lorem.paragraphs, user: User.all.sample, potin: Potin.all.sample)
end

10.times do
	Like.create(user: User.all.sample, potin: Potin.all.sample)
	Like.create(user: User.all.sample, comment: Comment.all.sample)
end
# # ou
# potinoucomment = []
# potinoucomment << Potin.all
# potinoucomment << Comment.all
# 20.times do
# 	Like.create(user: User.all.sample, )




1.times do
 pm = PrivateMessage.new
 joris = User.all.sample
 alexis = User.all.sample
 pm.sender = joris
 pm.recipient = alexis
 pm.save
end