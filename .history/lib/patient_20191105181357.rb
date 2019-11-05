class Patient
  attr_accessor :name, :doctor
  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    appointment.all << self
  end
end