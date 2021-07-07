class Genre 
 attr_accessor :name, :songs
 
 @@all = []
 
 def initialize(name)
   @name = name
   @songs = songs
   @@all << self 
 end 
 
 def songs
   genre_songs = []
   Song.all.select do |song|
     if song.genre == self 
       genre_songs << song
      end
    end
    genre_songs
  end
  
  def self.all 
    @@all 
  end
  
  def artists 
    genre_songs = [] 
    genre_artists = [] 
    self.songs.select do |song|
      if song.genre == self
        genre_songs << song 
      end
    end
    genre_songs.select do |song| 
      genre_artists << song.artist 
    end
    genre_artists
  end
  
end