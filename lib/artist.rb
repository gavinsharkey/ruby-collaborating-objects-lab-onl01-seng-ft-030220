class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    self.name = name
    self.save
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end
end