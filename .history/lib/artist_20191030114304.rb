class Artist
  attr_accessor :name, :genres
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    @songs << name
  end

  def self.all
    @@all
  end
  def new_song(name, genre)
		self.songs << name
		song.genre = genre
  end
  def self.songs
    Song.all
  end
end