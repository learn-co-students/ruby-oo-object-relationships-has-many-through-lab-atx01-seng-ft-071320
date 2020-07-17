

class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    pats_docs = []
    Appointment.all.each do |appointment|
      if appointment.patient == self
        pats_docs << appointment.doctor
      end
    end
    pats_docs
  end

end
