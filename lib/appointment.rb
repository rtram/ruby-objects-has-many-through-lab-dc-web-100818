

class Appointment
  
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def initialize(doctor, patient, date)
    @date = date
    @doctor = doctor
    @patient = patient
    self.class.all << self
  end
  
  def self.all 
    @@all
  end 
  
end 