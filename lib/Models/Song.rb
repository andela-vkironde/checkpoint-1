class Song
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre

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
  def artist=(value)
    @artist = value
    @artist.add_song(self)
  end
  def genre=(value)
    @genre = value
    @genre.songs.push(self) unless @genre.songs.include? self
  end
  
end
