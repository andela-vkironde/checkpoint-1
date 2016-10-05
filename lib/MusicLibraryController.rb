class MusicLibraryController
  attr_accessor :path
  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(@path)
    importer.import
  end
  def call
    self
    puts "Options:"
    choice = gets.chomp
  end


end
