

class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    self.class.all << self
  end

  def self.all
    @@all
  end

end
