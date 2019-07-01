class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        Song.all.collect do |song|
            if song.genre == self
                song.artist
            end
        end
    end

    def self.all
        @@all
    end
end