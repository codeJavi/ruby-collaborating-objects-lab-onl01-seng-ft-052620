class Artist 
  attr_accessor :name, :has_and_belongs_to_many
  
  @@all = []
  
  def initalize(name)
    @name = name
    @songs = []
    save
  end 
  
  def self.all
    @@all
  end 
  
  def self.create(name)
    
    