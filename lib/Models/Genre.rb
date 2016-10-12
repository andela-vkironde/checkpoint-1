class Genre
  extend Concerns::Findable
  extend Concerns::Base
  include Concerns::Saving
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.map(&:artist).uniq
  end
end
