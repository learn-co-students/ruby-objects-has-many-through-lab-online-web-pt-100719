class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
  madonna = Artist.new("Madonna")
pop = Genre.new("pop")
 
into_the_groove = Song.new("Into the Groove", madonna, pop)
end