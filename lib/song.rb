class Song
  attr_accessor :name, :artist
  @@all = song 

  def initialize(name)
    @name = name
    @song = 
  end
  
  def save
    @@all<< self 
  end 
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end	  end

  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name = artist_name
    song 
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
end 