class Patient
    attr_accessor :name, :doctors
    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @doctors = []
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        @appointments
    end

    def new_appointment (doctor, date)
        Appointment.new(date, self, doctor)
    end

    def addAppointment(appointment)
        @appointments << appointment
        @doctors << appointment.doctor
        appointment
    end


end