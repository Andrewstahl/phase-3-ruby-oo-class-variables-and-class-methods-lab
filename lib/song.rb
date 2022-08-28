require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      # If the genre is not included in the hash I want to add it with the value
      # of the number of times that genre occurs in the genre array 
      if !genre_hash.include?(genre)
        genre_hash[genre] = @@genres.count(genre)
      # Otherwise, skip past it
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      # If the artist is not included in the hash I want to add it with the value
      # of the number of times that artist occurs in the artist array 
      if !artist_hash.include?(artist)
        artist_hash[artist] = @@artists.count(artist)
      # Otherwise, skip past it
      end
    end
    artist_hash
  end

  binding.pry
end
