class Artist 
attr_reader :name
    @@all = []

def initialize(name)
  @name = name
self.class.all << self
end

def songs
Songs.all.select {|songs| songs.all.artist == self}
end

def genres
songs.map {|genres| genres.genre}

def self.all
@@all
end
end