class Doctor
  
  attr_accessor :name, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    #@songs = []
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    self.appointments = appointment
  end
  
  # Iterates over artist's songs
  # Collects genre of each song
  def patients
    appointments.map {|appointment| appointment.patient}
  end

  
end