class Song
    @@all = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        genre.addSong(self)
    end

    def self.all
        @@all
    end

    def to_s
        "#{name}, #{artist}, #{genre}"
    end
end