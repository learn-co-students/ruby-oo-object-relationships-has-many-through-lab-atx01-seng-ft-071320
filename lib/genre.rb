class Genre
    attr_accessor :name 
    @@all = []
    def self.all
        @@all
    end 

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|songs| songs.genre == self}
    end

    def artists
        songs.map {|songs| songs.artist}
    end
end
