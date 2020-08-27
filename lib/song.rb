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
    self.all << song
    song
  end
  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end
  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end
  def self.find_by_name(title)
    result = self.all.detect {|song| song.name == title}
    result
  end
  def self.find_or_create_by_name(title)
    if self.find_by_name(title) == nil
      self.create_by_name(title)
    else
      self.find_by_name(title)
    end
    
  end
  
  def self.alphabetical()
    @@all.sort_by{|x| x.name}
  end
  def self.new_from_filename(title)
    song = self.new
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - "))

end
