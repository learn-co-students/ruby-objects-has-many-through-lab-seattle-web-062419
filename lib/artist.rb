require 'pry'
class Artist
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        s = Song.new(name, self, genre)
        @songs << s
        s
    end

    def songs
        @songs
    end

    def genres
        songList = songs
        genreList = []
        songList.select do |song|
            genreList << song.genre
        end
        genreList
    end
end