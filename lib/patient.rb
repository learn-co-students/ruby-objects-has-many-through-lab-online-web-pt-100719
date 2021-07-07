class Patient
  attr_accessor :name, :appointment 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointment = appointment
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date,self,doctor)
  end
  
  def appointments
    patient_appointments = []
    Appointment.all.select do |appointment|
    if appointment.patient == self 
      patient_appointments << appointment
      end
    end
    patient_appointments
  end
  
  def doctors
    patient_doctors = []
    self.appointments.select do |appointment|
   patient_doctors << appointment.doctor
    end
  patient_doctors
  end
end