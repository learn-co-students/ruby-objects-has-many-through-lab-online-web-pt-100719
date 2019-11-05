class Genre
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    Genre.all.select {|song| song.artist == self}
  end

end