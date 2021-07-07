class Appointment
  
  attr_accessor :patient, :doctor, :date
  
  @@all = []
  
  def initialize(date,patient,doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end