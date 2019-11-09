class Doctor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def new_appointment(patient_obj, date)
        Appointment.new(date, patient_obj, self)
    end

    def patients
        self.appointments.collect{|appointment| appointment.patient}
    end
end