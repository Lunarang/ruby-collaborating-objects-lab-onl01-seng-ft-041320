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
  
  def self.find_or_create_by_name(artist_name)
    find_artist = self.all.find {|artist| artist.name == artist_name}
        
    if find_artist != nil
      find_artist
    else
      new_artist = self.new(artist_name)
      new_artist
    end
  end
    
  def print_songs
    
end
