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

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
