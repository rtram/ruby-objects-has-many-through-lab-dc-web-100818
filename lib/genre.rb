require 'pry'

class Genre 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.class.all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    sort = Song.all.select {|song_hash| song_hash.genre == self}
  end 
  
  def artists
    self.songs.map(&:artist)
  end
  
end 