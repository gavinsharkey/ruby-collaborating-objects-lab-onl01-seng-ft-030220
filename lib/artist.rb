class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

  end

  def initialize(name)
    self.name = name
    self.save
  end
  
  def save
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  
end