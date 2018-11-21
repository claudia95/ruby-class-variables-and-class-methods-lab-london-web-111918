require 'pry'

class Song 
  attr_accessor :name, :artist, :genre, :artists, :genres
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  
  def initialize(name, artist, genre)
    @name = name
    @@songs << name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count = @@count + 1
   # binding.pry
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.count
    @@count
  end

   def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each { |artist| artist_count[artist] += 1}
    artist_count
  end
  
  def self.genre_count
    genre_count = 
  end
end
