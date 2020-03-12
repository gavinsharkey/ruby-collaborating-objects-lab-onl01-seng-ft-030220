class Song
  attr_accessor :artist, :name

  @@all = []

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    name = filename.split(' - ')
    song = self.new(name[1])
    song.artist = name[0]
    song
  end

  def save
    @@all << self
  end

  def initialize(name)
    self.name = name
    self.save
  end

end
