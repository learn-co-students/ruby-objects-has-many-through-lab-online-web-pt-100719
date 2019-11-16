class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
ferris = Patient.new("Ferris Bueller")
doogie = Doctor.new("Doogie Howser")
 
new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)
end