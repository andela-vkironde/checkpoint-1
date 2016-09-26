class Song
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end
  def self.all
    @@all
  end


end

cool = Song.new("Thsi.mp3")
