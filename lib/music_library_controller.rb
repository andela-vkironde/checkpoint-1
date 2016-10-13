class MusicLibraryController
  attr_accessor :cli
  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
    @cli = CLI.new
  end

  def call
    cli.commands
    running
  end

  def running
    loop do
      cli.prompt
      input = gets.chomp
      break if input == "exit"
      check_input(input)
    end
  end

  def check_input(input)
    input = input.tr(" ", "_")
    if respond_to?(input)
      send(input)
    else
      cli.undefined
    end
  end

  def list_songs
    cli.list_songs
  end

  def list_artists
    cli.list_artists
  end

  def list_genres
    cli.list_genres
  end

  def list_genre
    puts "Enter a genre"
    genre = Genre.find_by_name(gets.chomp)
    cli.list_by_category(genre)
  end

  def list_artist
    puts "Please Enter an Artist's name: "
    artist = Artist.find_by_name(gets.chomp)
    cli.list_by_category(artist)
  end

  def play_song
    puts "Please Enter a Song Number:"

    song_index = gets.chomp
    cli.play_song(song_index)
  end
end
