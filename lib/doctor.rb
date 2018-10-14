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
    binding.pry
    Appointment.new(patient, self, date)
  end 
  
  def appointments
    Appointment.all.map {|appointment| appointment.doctor == self}
  end 
  
  
end 