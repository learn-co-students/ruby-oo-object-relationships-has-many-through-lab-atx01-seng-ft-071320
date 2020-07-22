class Patient
    @@all = []
    attr_reader :name
    
    def initialize(name)
      name
    self.class.all << self
        
end
    
def new_appointment(doctor, time)
    Appointment.new(time, self, doctor)
end
  
def appointments
Appointment.all.select {|appointments| appointments.patient == self }
end

def doctors
result = appointments.map {|appointments| appointments.doctor}
result.uniq
end

def self.all
    @@all
    end
    
    
end    