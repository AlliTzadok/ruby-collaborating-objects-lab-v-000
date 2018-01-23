class Artist

  attr_accessor :name, :songs

  @@all = []

  #the library should be made up of music with artists that are unique
  # # # this is probably done on the artist class.
  def initialize(name)
    @name = name
    @songs = []
  end


  def save
    @@all << self

  end

  def self.find_or_create_by_name(name)
  end

  def add_song
  end
    

end
