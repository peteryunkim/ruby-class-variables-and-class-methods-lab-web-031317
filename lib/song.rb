require 'pry'

class Song
	attr_accessor :title, :artist, :genre
	@@count = 0
	@@genres = []
	@@artists = []

	def initialize(title, artist, genre)
		@@count += 1
		@title = title
		@genre = genre
		@@genres << genre
		@artist = artist
		@@artists << artist
	end

	def self.count
		@@count
	end

	def name
		@title
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		genre_hash = {}
		@@genres.each do |x|
			genre_hash[x] ||= @@genres.count(x)
		end
		genre_hash
	end

	def self.artist_count
		artist_hash = {}
		@@artists.each do |x|
			artist_hash[x] = @@artists.count(x)
		end
		artist_hash
	end
end