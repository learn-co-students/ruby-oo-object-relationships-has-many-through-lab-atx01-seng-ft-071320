class Doctor
@@all = []
attr_reader :name

def initialize(name)
  @name = name
  self.class.all << self

end

# an instance of the `Patient` class and a date, and creates a new `Appointment`. That
# `Appointment` should know that it belongs to the doctor
def new_appointment(patient, date)
Appointment.new(date, patient, self)
end
# an instance of the `Patient` class and a date, and creates a new `Appointment`. That
# `Appointment` should know that it belongs to the doctor

def appointments
    Appointment.all.select {|appointments| appointments.doctor == self }

end

def patients
    array = appointments.map {|appointments| appointments.patient}
array.uniq
end
def self.all
@@all
end
end