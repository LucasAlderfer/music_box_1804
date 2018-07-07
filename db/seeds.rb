# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
artist = Artist.create(name: 'Adele')
song_1 = artist.songs.create(title: "Dont't Stop Believin", length: 303, play_count: 123456)
song_2 = artist.songs.create(title: "Never gonna give you up", length: 253, play_count: 98762452)
song_3 = artist.songs.create(title: "Hello", length: 763, play_count: 45678)
song_4 = artist.songs.create(title: "Goodbye", length: 873, play_count: 123486)
song_5 = artist.songs.create(title: "Blackbird", length: 453, play_count: 63423)
song_6 = artist.songs.create(title: "Love is all you need", length: 234, play_count: 3847)
song_7 = artist.songs.create(title: "Wheel in the Sky", length: 373, play_count: 23897)
song_8 = artist.songs.create(title: "Yesterday", length: 3476, play_count: 98346823)
