class CLI
  def commands
    puts "Commands:
    1. list songs   .............. Lists all songs
    2. list genres  .............. Lists all genres
    3. list artists .............. Lists a artists
    4. list artist  .............. Lists a particular artist
    5. list genre   .............. Lists a particular genre
    6. play song    .............. Play a particular song
    7. stop song    .............. Stops the song that is playing

    exit            .............. Exit Music Library
    "
  end

  def prompt
    print "ML Prompt >>"
  end

  def list_songs
    Song.all.each_with_index do |song, index|
      puts "#{index + 1}. #{song.artist.name} - #{song.name}" \
       " - #{song.genre.name}"
    end
  end

  def list_artists
    Artist.all.each { |artist| puts artist.name.to_s }
  end

  def list_genres
    Genre.all.each { |genre| puts genre.name.to_s }
  end

  def check_song_number?(song_index)
    if /[^0-9]/ =~ song_index
      return false
    elsif (1..Song.all.length).include?(song_index.to_i)
      return true
    else
      return false
    end

  end

  def play_song(song_index)
    if check_song_number?(song_index)
    Song.all.each_with_index do |song, index|
      if index + 1 == song_index.to_i
        puts "Playing #{song.artist.name} - #{song.name} - #{song.genre.name} "
      end
    end
    else
      puts "Please Enter A Valid Song Number."
    end
  end

  def list_by_category(category)
    if category
      category.songs .each do |song|
        puts "#{song.artist.name} - #{song.name} - #{song.genre.name}"
      end
    else
      puts "#{category} not found"
    end
  end

  def undefined
    puts "Command not found!"
    commands
  end
end
