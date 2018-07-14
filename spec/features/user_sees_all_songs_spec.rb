require 'rails_helper'

describe 'user index' do

  it 'user can see all songs' do
    artist = Artist.create(name: 'Adele')
    song_1 = artist.songs.create(title: "Dont't Stop Believin", length: 303, play_count: 123456)
    song_2 = artist.songs.create(title: "Never gonna give you up", length: 253, play_count: 98762452)
    song_3 = artist.songs.create(title: "Hello", length: 763, play_count: 45678)
    song_4 = artist.songs.create(title: "Goodbye", length: 873, play_count: 123486)
    song_5 = artist.songs.create(title: "Blackbird", length: 453, play_count: 63423)
    song_6 = artist.songs.create(title: "Love is all you need", length: 234, play_count: 3847)
    song_7 = artist.songs.create(title: "Wheel in the Sky", length: 373, play_count: 23897)
    song_8 = artist.songs.create(title: "Yesterday", length: 3476, play_count: 98346823)

    visit songs_path

    expect(page).to have_content("All Songs")
    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Plays: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Plays: #{song_2.play_count}")
  end
end
