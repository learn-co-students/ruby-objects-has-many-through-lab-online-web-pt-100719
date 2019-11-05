class Patient
  attr_accessor :name, :doctor
  @@PATIENTS = []
  def initialize(name)
    @name = name
    @@PATIENTS << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date) << self
  end
end