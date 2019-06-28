class Appointment
    @@all = []
    attr_accessor :name, :doctor, :patient

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
        patient.addAppointment(self)
    end

    def self.all
        @@all
    end

    


end