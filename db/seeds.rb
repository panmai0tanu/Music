# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times do	
	Song.create(name: Faker::WorldCup.team, band: Faker::Music.band, album:Faker::Music.album, 
		genre: Faker::Music.genre, chord: Faker::Music.chord)
end

#Song.where("chord like '%c'") -> search chord == 'c'
#Song.where("band like 'The Beater'") -> search band == 'The Beater'
#Song.where('genre LIKE ?', "%rock%") -> search genre when has 'rock'