# Artist has many genres through its songs
# Artist has many songs

require 'pry'

class Artist

    attr_accessor :name

    # class variable that begins as an empty array
    @@all = []

    # artist is initialized with a name & saved in the @@all array
    def initialize(name)
        @name = name
        @@all << self
    end

    # class method that lists each artist in the class variable
    def self.all
        @@all
    end

    # instance method that takes in an argument of a name & genre
    # and creates a new song. That song should know that it belongs to the artist.
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    # instance method that iterates through all songs and finds the songs
    # that belong to that artist
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    # instance method that iterates over that artist's songs
    # and collects the genre of each song
    def genres
        songs.collect do |song|
            song.genre
        end
    end

end
