require 'pry'
class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    dir = Dir[self.path]
    binding.pry
  end

end
