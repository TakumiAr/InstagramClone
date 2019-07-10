50.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  icon = Faker::Avatar.image
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               icon: icon
               )
end
