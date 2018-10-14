require 'pry'

class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
    
  end 
  
  def appointments
    doctors_appointments = Appointment.all.map {|appointment| appointment.doctor == self}
    binding.pry
  end 
  
  
end 