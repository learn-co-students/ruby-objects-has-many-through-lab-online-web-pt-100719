class Patient
    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor_obj, date)
        Appointment.new(date, self, doctor_obj)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.patient == self}
    end

    def doctors
        self.appointments.collect{|appointment| appointment.doctor}
    end
end