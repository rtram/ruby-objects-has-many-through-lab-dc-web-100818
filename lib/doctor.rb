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
    Appointment.all.select {|appointment| appointment.doctor == self}
  end 
  
  def patients
    self.appointments(&:patient)
  end 
  
  
end 