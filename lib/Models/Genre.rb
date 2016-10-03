class Genre
  attr_accessor :name
  attr_reader :songs

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def self.all
    @@all
  end
  def self.destroy_all
    @@all = []
  end
  def save
    @@all.push(self)
    self
  end

  def self.create(name)
    new(name).save
  end

  def artists
    _artists = []
    @songs.each do |song|
      _artists.push song.artist unless _artists.include? song.artist
    end
    _artists
  end

end
