class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @genre = genre
    @songs = []
  end

  def self.all
    @@all
  end

=begin
  def new_song(name, genre)
    new = Song.new(name, self, genre)
		new.name = name
    new.genre = genre
    self.all << new
  end

=end
  def songs
    Song.all.select {|song| song.artist == self}
  end
  def new_song(song, genre)
    new_song = Song.new(song)
    @songs << new_song
    @genre << genre
    song.artist = self
  end
end