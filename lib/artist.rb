require 'pry'
class Artist
   attr_accessor :name, :genre, :song_name
   
   @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    artist_songs = []
    Song.all.select do |song|
      if song.artist = self 
        artist_songs << song
        end
      end
    artist_songs
  end
  
  def new_song(song_name, genre)
    Song.new(song_name,self,genre)
  end 
  
  def genres
    artist_songs = []
    artist_genres = []
    Song.all.select do |song|
      if song.artist == self 
        artist_songs << song
      end
    end
    artist_songs.each do |song|
      artist_genres << song.genre
      #binding.pry 
    end
    artist_genres
  end
  
  
end