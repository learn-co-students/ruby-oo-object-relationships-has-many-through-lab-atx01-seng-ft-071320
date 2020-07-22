class Genre
@@all = []

def initialize(name)
  @name = name
end

def songs
    Songs.all.select {|songs| songs.genre == self}
end

def artists
    songs.map {|artists| artists}

def self.all
    @@all
end


end