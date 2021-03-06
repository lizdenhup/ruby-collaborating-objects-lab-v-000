require 'pry'
class Artist
attr_accessor :name, :songs 
@@all = []

def initialize(name)
  @name = name 
  @songs = []
end 

def add_song(song)
  song.artist = self 
  @songs << song 
end 

def save
  @@all << self
end 

def self.all
  @@all
end

def self.find_or_create_by_name(name)
  if @@all.detect {|artist| artist.name == name }
    @@all.detect {|artist| artist.name == name }
  else
    new_artist = self.new(name)
    new_artist.save 
    new_artist 
  end
end

def print_songs 
  self.songs.each do |song|
    puts song.name  
  end 
end 

end