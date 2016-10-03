class Artist
  extend Concerns::Findable
  attr_accessor :name, :songs
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
  def add_song(song)

      @songs.push(song) unless @songs.include? song
      song.artist = self unless song.artist
  end
  def genres
    _genres = []
    @songs.each do |song|
      _genres.push song.genre unless _genres.include? song.genre
    end
    _genres
  end
end
