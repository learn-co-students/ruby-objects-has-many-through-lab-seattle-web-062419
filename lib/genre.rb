# Genre has many artists through its songs
# Genre has many songs

require 'pry'
class Genre

    attr_accessor :name, :artist, :genre
    # class variable that begins as an empty array
    @@all = []

    # should be initialized with a name and saved in the @@all array
    def initialize(name)
        @name = name
        @@all << self
    end

    # class method that lists each genre in the class variable
    def self.all
        @@all
    end

    # instance method that iterates through all songs and 
    # finds the songs that belong to that genre
    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    # instance method that iterates over genre's collection of 
    # songs and collects the artist that owns each song
    def artists
        songs.collect do |song|
            song.artist
        end
    end
end
