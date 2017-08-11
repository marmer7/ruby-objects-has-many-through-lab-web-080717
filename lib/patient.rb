class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = Array.new
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end


end
