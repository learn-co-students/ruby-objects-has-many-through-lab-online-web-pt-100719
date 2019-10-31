class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    self.song << name
  end

  def self.all
    @@all
  end

  def songs
    
  end
end