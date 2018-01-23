class Artist

  attr_accessor :name, :songs

  @@all = []

  #the library should be made up of music with artists that are unique
  # # # this is probably done on the artist class.
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end


  def save
    @@all << self

  end

  def self.find_or_create_by_name(name)
    #find the artist instance that has the name, if it exists.
    if self.all.find {|artist| artist.name == name}
      self.all.find {|artist| artist.name == name}
    #it it doesn't exist, create one.
    else
      artist = Artist.new(name)
      artist.save
    #return will be the instance of an artist with the name attribute filled out.
      artist
    end
  end

#tell the artist about their songs.
#store the passed argument into the @songs array
# # # to be stored with the other songs by that artist
  def add_song(song)  # this is an instance class
    @songs << song
  end

  def print_songs
    @songs
    
  end


end
