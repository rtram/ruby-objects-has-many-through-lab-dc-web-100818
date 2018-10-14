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
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end 
  
  def appointments
    Appointment.all.map {|appointment| appointment.}
    
  end 
  
  
end 