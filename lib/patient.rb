class Patient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def  self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        array = []
        self.appointments.each do |appt|
            array << appt.doctor
        end
        array
    end
end