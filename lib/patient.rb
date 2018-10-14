

class Patient
  
  attr_accessor :name
  
  def initialize(name)
    @name 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end 
  
  
end 