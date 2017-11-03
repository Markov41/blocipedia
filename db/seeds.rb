require 'faker'
 
 100.times do
  Wiki.create!(
   
   title: Faker::StarWars.unique.character,
   body: Faker::Zelda.unique.location
   )
 end
 wiki = Wiki.all
 
  10.times do
  User.create!(
   
   email: Faker::Internet.email,
   password: Faker::Internet.password
   )
 end
 user = User.all
 
 
 
 
 puts "Faker Seeds Finished"
 puts "#{Wiki.count} wikis created with Faker"
 puts "#{User.count} users created with Faker"