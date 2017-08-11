class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = Array.new
  end

  def add_appointment(appointment)
    self.appointments << appointment
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end




end
