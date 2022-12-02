require 'rails_helper'

RSpec.describe 'the songs show page' do
  
  # As a visitor
  # When I visit /songs/1, where 1 is the ID of a song in my DB
  # Then I see that song's title and artist
  # And I do not see any other songs in the DB
  
  it 'displays the song title' do
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count:2456357)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count:21456357)
    
    visit "/songs/#{song.id}"
    #localhost:3000/songs/1
    
    expect(page).to have_content(song.title) #page and have_content are from capybara
    expect(page).to_not have_content(song_2.title)
    
  end
  
  it 'displays the name of the artist for the song' do
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I Really Like You", length: 208, play_count:2456357)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 207, play_count:21456357)
    
    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end
end
