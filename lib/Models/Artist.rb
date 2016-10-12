class Artist
  extend Concerns::Findable
  extend Concerns::Base
  include Concerns::Saving
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song) unless @songs.include? song
    song.artist = self unless song.artist
  end

  def genres
    @songs.map(&:genre).uniq
  end
end
