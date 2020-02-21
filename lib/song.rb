require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create 
    song = self.new 
    song.save 
    song
  end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song
  end
  
  def self.create_by_name(name) 
    song = self.new
    song.name = name 
    song.save 
    song
  end 
  
  def self.find_by_name(name) 
    @@all.find do |song| 
      song.name == name 
    end 
  end 
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil 
      self.create_by_name(name) 
    else 
      self.find_by_name(name)
  end 
  
  def self.alphabetical 
    @@all.sort_by {|song| song.name}
    end
  end
  
  def self.new_from_filename(name)
    song = self.new 
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    ar
  end 
  
  def self.create_from_filename 
    
  end 
  
  def self.destroy_all 
    @@all.clear 
  end 
  
end


  
  
  
  
  
  
  