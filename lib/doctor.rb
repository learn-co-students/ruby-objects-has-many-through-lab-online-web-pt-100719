class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def appointments
    doctor_appointments = []
  Appointment.all.select do |appointment|
    if appointment.doctor == self
      doctor_appointments << appointment
    end
  end
  doctor_appointments
  end
  
  def new_appointment(patient, date)
    Appointment.new(date,patient,self)
  end 
  
  def patients
     doctor_appointments = []
     doctor_patients = []
  Appointment.all.select do |appointment|
    if appointment.doctor == self
      doctor_appointments << appointment
    end
  end
  doctor_appointments.select do |appointment|
    if appointment.doctor == self
     doctor_patients << appointment.patient
      end 
    end
    doctor_patients
  end
  
end