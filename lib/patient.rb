class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end 

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(doctor, self, date)
    end

    def appointments
        Appointment.all.select{|appts|
    appts.patient == self}
    end 

    def doctors
        appointments.map{|appts| appts.doctor}
    end
end 