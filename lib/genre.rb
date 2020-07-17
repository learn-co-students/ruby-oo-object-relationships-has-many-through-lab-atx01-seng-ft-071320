

class Genre

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    artists_of_genre = []
    Song.all.each do |song|
      if song.genre == self
        artists_of_genre << song.artist
      end
    end
    artists_of_genre
  end

end
