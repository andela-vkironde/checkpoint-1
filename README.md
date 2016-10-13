[![Build Status](https://travis-ci.org/andela-vkironde/checkpoint-1.svg?branch=develop)](https://travis-ci.org/andela-vkironde/checkpoint-1)
[![Code Climate](https://codeclimate.com/github/andela-vkironde/checkpoint-1/badges/gpa.svg)](https://codeclimate.com/github/andela-vkironde/checkpoint-1)
[![Issue Count](https://codeclimate.com/github/andela-vkironde/checkpoint-1/badges/issue_count.svg)](https://codeclimate.com/github/andela-vkironde/checkpoint-1)

#Music Library Application

##Project Description

Music Library Application is a Command Line Application built with Ruby. It allows a user to import `.mp3` files from a path.
The user can then use the provided commands to list all `songs`, `artists` or `genres`. The user can also list songs based on a genre or artist. He can also `play a song` .

## Prerequisities

  1. [Ruby](https://github.com/rbenv/rbenv)
  2. [Bundler](http://bundler.io/)
  3. [RSpec](http://rspec.info/)

##Commands and Features
The commands are:

    list songs - lists all the songs in the path

    list artists - lists all the artists in the path

    list genres - lists all the genres in the path

    list artist - lists all the songs in the path based on the artist given

    list genre - lists all the songs in the path based on the genre given

    play song - plays the song according to the specified song number

    exit - exits the program

##Instructions for getting started
###Installation

Clone the repo:

    $  git clone https://github.com/andela-vkironde/checkpoint-1.git

Enter the repo's directory:

    $  cd checkpoint-1

Install dependancies:

    $  bundle install

###Running the application

In the checkpoint-1 directory, run this command

    $  bin/musiclibrary

###Running the tests

In the checkpoint-1 directory, run this command:

`$  bundle exec rspec` for the first time then

`rspec` after the first time

The application should pass all the 70 tests    

##Creating a similar application

To create a similar application from scratch, follow the instructions [here](https://github.com/andela-hmasila/checkpoint-one-music-library/wiki/Instructions-of-creating-the-music-library-application)

##Limitations:

    The files MUST be saved in ruby-music-library/db/mp3s directory (path) to be recognized by the application

    The files MUST be named in the format "artist name" - "song name" - "genre"

    You cannot play a song by typing the song name. Type its special (index) number instead.
