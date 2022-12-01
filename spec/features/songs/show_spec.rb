require 'rails_helper'

RSpec.describe 'the songs show page' do
  
  # As a visitor
  # When I visit /songs/1, where 1 is the ID of a song in my DB
  # Then I see that song's title and artist
  # And I do not see any other songs in the DB
  
  it 'displays the song title' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = Song.create(title: "I Really Like You", length: 208, play_count:2456357)
    
    visit "/songs/#{song.id}"
    #localhost:3000/songs/1
  end
  
  xit 'displays the name of the artist for the song' do
  end
end
