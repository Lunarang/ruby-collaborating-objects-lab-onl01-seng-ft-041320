class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_song (song)
    song.artist = self 
  end
  
  def self.find_or_create_by_name (name)
    find_artist = @@all.find {|artist| artist == name}
    
    if find_artist != nil 
      find_artist
    else 
      Artist.new (name)
    end
  end
    
end
