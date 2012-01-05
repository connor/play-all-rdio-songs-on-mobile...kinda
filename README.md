# Play all Rdio songs on mobile.

Well, kind of.

This is a script, based **heavily** off of the [rdio-simple](github.com/rdio/rdio-simple) examples (by [Ian McKellar](https://github.com/ianloic) and contributions from [Michael Jackson](https://github.com/mjijackson)), that adds all of your Rdio songs to two playlists: one for *synced* songs, and one for all of the songs in your collection.

I say kind of, because it's a <del>bit of a</del> hack. It allows you to
select a playlist on your Rdio mobile app, then just press 'shuffle'. It will then play all of the songs in your Rdio collection (or just the synced ones)!

## How to use it

1. Clone the repo

2. Sign up for a developer account at: http://developer.rdio.com/

3. Paste in your *Consumer Key* and *Consumer Secret* in `rdio_consumer_credentails_SAMPLE.rb`.

3. Rename `rdio_consumer_credentials_SAMPLE.rb` to `rdio_consumer_credentials.rb`.

4. Open up a terminal, cd into the project directory, and run: `ruby script.rb`.

  - This will prompt you to go to a URL, and verify the auth by typing in a short number in the terminal. Once that is done, it will continue with the process. Once finished, it will print out 'all done :)'.

**To play all of the songs at once**, just select whichever playlist
you'd like (only synced, or entire collection), select a song, then
make sure it's set to shuffle. Then, enjoy!

Let me know if you have any questions or comments in the issues!

<3
