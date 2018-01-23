class Song
  attr_accessor :name, :artist

  #parse a filename to find the song name and artist name.
  # # # note - every filename is separated by " - "


  def initialize(name)
    @name = name
  end

  #create a new song instance using the string we gather from filename
  def self.new_by_filename(filename)
    file_details = filename.split(" - ")
    artist = file_details[0]
    song = file_details[1]
    new_song = self.new(song)
    new_song

  end


  #associate the new song with an artist.
  # # # note - use helper method: artist_name=(artist_name)
  #this method should takes in the name and gets the artist object

  #return the new song instance

end
