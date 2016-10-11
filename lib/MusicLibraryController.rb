class MusicLibraryController
  attr_accessor :path, :importer
  def initialize(path = "./db/mp3s")
    @path = path
    importer = MusicImporter.new(@path)
    importer.import
  end

  def call
    loop do
      puts "Options:"
      choice = gets.chomp
      case choice
      when "list songs"
        Song.all.each_with_index do |song, index|
          puts "#{index += 1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
        end
      when "list artists"
        Song.all.each_with_index do |song, index|
          puts "#{index += 1}. #{song.artist.name}"
        end
      when "list genres"
        Song.all.each_with_index do |song, index|
          puts "#{index += 1}. #{song.genre.name}"
        end
      when "list artist"
        puts "Enter an artist"
        artist = Artist.find_by_name(gets.chomp)
        if artist
        artist.songs .each do |song|
          puts "#{song.artist.name} - #{song.name} - #{song.genre.name}"
        end
        else
          puts "artist not found"
      end
    when "list genre"
      puts "Enter a genre"
      genre = Genre.find_by_name(gets.chomp)
      if genre
      genre.songs .each do |song|
        puts "#{song.artist.name} - #{song.name} - #{song.genre.name}"
      end
      else
        puts "genre not found"
    end
      end
      break if choice == "exit"
    end
end
end
