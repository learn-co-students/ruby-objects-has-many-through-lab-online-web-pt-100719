class Song
  attr_accessor :genre, :artist, :name

  def initialize(name, genre)
    @name = name
    self.genre = genre
    genre.add_song(self)
  end
end

madonna = Artist.new("Madonna")
pop = Genre.new("pop")
 
into_the_groove = Song.new("Into the Groove", madonna, pop)