# Song belongs to an artist & genre

require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    # class variable that begins as an empty array
    @@all = []

    # song should be initialized with a name, artist and genre
    # and saved in the @@all array
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    # class method that lists each song in the class variable
    def self.all
        @@all 
    end

end
