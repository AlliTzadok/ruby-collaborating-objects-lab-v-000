class Artist

  attr_accessor :name, :songs

  @@all = []

  #the library should be made up of music with artists that are unique
  # # # this is probably done on the artist class.
  def initialize(name)
    @name = name
  end

  def songs
    @songs
  end

  def save
    @@all << name
  end

end
