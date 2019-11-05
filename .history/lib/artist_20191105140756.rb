class Artist
  attr_accessor :name, :genre, :artist
  @@all = []
  def initialize(name)
    @name = name
    @genre = genre
    @songs = []
    @@all << self
    @songs << name
  end

  def self.all
    @@all
  end
  def new_song(name, genre)
    new = Song.new(name, self, genre)
		new.name = name
    new.genre = genre
    self.all << new
  end
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