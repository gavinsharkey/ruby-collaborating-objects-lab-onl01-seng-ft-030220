require 'pry'
class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    dir = Dir[self.path].children
    binding.pry
  end

end
