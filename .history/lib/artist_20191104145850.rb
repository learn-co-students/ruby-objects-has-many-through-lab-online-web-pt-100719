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
		self.genre = genre
  end
  def self.songs
    Artist.all.select {|song| song.owner == self}
  end
end