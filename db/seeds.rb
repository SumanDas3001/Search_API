# 100.times do
# 	Author.create({
# 		name: Faker::Name.name, 
# 		author_bio: Faker::Lorem.sentence,
# 		academics: Faker::Lorem.sentence,
# 		awards: Faker::Lorem.sentence,
# 		profile_pic: File.open(File.join(Rails.root, "app/assets/images/image.jpg"))
# 	})
# end

250.times do
	Review.create({
		name: Faker::Name.name,
		rating: Faker::Number.between(1,5),
		title: Faker::Book.title,
		description: Faker::Lorem.sentence
	})
end