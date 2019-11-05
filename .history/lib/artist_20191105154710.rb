class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, artist, genre)
    self.songs << name
    name.artist = artist
    name.genre = genre
  end
end