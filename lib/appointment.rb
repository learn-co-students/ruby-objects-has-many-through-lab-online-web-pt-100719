class Appointment
  attr_accessor :doctor, :patient, :name 

  def initialize(name, patient)
    @name = name 
    self.patient = patient  
    patient.add_appointment(self) 
  end 
end


ferris = Patient.new("Ferris Bueller")
doogie = Doctor.new("Doogie Howser")
 
new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)