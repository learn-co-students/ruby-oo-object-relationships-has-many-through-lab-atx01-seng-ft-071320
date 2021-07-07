class Appointment
@@all = []
attr_accessor :doctor, :patient, :time

def initialize(time, patient, doctor)
    @doctor = doctor
    @patient = patient
    @time = time
    self.class.all << self
end

def self.all
@@all
end



end