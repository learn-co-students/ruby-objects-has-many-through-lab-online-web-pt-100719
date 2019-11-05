class Patient
  attr_reader :name
  @@PATIENTS = []
  def initialize(name)
    @name = name
    @@PATIENTS << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
end