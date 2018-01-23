class MP3Importer
  #Parses through a directory of files
  #sends the filenames to a song class to create a music library
  #the library should be made up of music with artists that are unique

  def initialization(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |filename|filename.gsub("#{path}/", "")}
  end

  def import

    file.each {|filename| Song.new_by_filename(filename)}
  end



end
