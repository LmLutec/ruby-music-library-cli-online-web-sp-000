class Artist 
  
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs = [] 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all 
    @@all.clear 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create(name) 
    @@all << Artist.new(name).save 
  end 
  
  def songs 
    @songs 
  end 
  
end 