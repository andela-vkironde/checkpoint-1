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
  def self.new_from_filename(filename)
    filename = filename.chomp(".mp3")
    song_info = filename.split(" - ")
    songArtist = Artist.find_or_create_by_name(song_info[0])
    songGenre = Genre.find_or_create_by_name(song_info[2])

    self.new(song_info[1], songArtist, songGenre)
  end
  def self.create_from_filename(filename)
    self.new_from_filename(filename).save
  end
end
