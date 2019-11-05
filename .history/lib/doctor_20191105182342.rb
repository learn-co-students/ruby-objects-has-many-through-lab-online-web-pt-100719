class Doctor
  attr_reader :name
  @@DOCTORS = []

  def initialize(name)
    @name = name
    @@DOCTORS << self
  end

  def self.all
    @@DOCTORS
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(patient,date)
    Appointment.new(date, patient, self)
  end

  def patients
    appointment.collect {|appointment| appointment.patient}
end