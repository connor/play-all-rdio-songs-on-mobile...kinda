#!/usr/bin/env ruby

require 'rubygems'

require './rdio'
require './rdio_consumer_credentials'

# create an instance of the Rdio object with our consumer credentials
rdio = Rdio.new([RDIO_CONSUMER_KEY, RDIO_CONSUMER_SECRET])

# authenticate against the Rdio service
url = rdio.begin_authentication('oob')
puts 'Go to: ' + url
print 'Then enter the code: '
verifier = gets.strip
rdio.complete_authentication(verifier)

tracks           = rdio.call('getTracksInCollection')['result']
synced_track_ids = []
all_track_ids    = []

puts "First, I've got to get all of the tracks in your collection. One sec..."

tracks.each do |track|
  if track['canDownload']
    synced_track_ids.push(track['key'].to_s)
  end
  all_track_ids.push(track['key'].to_s)
end

synced_track_ids = synced_track_ids.join(',')
all_track_ids    = all_track_ids.join(',')

puts "Great! Now it's time to make the playlists..."

rdio.call('createPlaylist', :name => "Synced tracks only", :description => "Playlist for all of my synced tracks", :tracks => synced_track_ids)
rdio.call('createPlaylist', :name => "All tracks in collection", :description => "Playlist for all of the tracks in my collection", :tracks => all_track_ids )

puts "Woooot! You can now listen to all of your songs at once on Rdio's mobile app!"
