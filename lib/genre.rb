class Genre
    attr_accessor :name, :artists
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        @songs
    end

    def addSong(song)
        @songs << song
        @artists << song.artist
        song
    end

end