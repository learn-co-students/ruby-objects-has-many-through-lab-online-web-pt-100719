class Patient
  attr_accessor :name, :doctor
  @@PATIENTS
  def initialize(name)
    @name = name
    @@PATIENTS << self
  end

  def new_appointment(doctor, date)
    appointment.all << self
  end
end