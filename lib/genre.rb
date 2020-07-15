class Genre
    attr_reader :name, :songs

    @@all = []

    def initialize(genre)
        @name = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        array = []
        self.songs.each do |song|
            array << song.artist
        end
        array
    end
end