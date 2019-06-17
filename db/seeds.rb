100.times do
	Author.create({
		name: Faker::Name.name, 
		author_bio: Faker::Lorem.sentence,
		academics: Faker::Lorem.sentence,
		awards: Faker::Lorem.sentence,
		profile_pic: File.open(File.join(Rails.root, "app/assets/images/image.jpg"))
	})
end