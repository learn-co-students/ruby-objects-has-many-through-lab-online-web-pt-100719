class Patient
  attr_reader :name
  @@PATIENTS = []
  def initialize(name)
    @name = name
    @@PATIENTS << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor) << self
  end
end