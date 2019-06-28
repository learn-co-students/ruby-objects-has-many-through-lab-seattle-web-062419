class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @appointments = []
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        a = Appointment.new(date, patient, self)
        @appointments << a
        a
    end

    def appointments
        @appointments
    end

    def patients
        appointmentList = appointments
        patientList = []
        appointmentList.select do |appointment|
            patientList << appointment.patient
        end
        patientList
    end
end