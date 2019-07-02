# Patient has many appointments
# Patient has many doctors through its appointments

class Patient 

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    # patient has many appointments
    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    # Patient has many doctors through appointment
    def doctors
        appointments.collect do |appointment|
            appointment.doctor
        end
    end
end