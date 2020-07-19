class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end 

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select{|appts|
    appts.doctor == self}
    end 

    def patients
        appointments.map{|appts| appts.patient}
    end

end 