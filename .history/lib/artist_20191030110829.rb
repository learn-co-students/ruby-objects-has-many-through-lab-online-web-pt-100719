class Artist
  attr_accessor :name, :genres
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end
  def new_song(name, genre)
    @songs << self
  def songs
    @songs
  end
end