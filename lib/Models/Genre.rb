class Genre < BaseModel
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs

  @all = []

  def initialize(name)
    super(name)
    @songs = []
  end

  def artists
    @songs.map(&:artist).uniq
  end
end
