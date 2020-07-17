

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    docs_pats = []
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        docs_pats << appointment.patient
      end
    end
    docs_pats
  end

end
