require 'pry'

class Song
 
    @@all = []
    @@artists = []
    @@genres = []

    @@count = 0

    attr_accessor :name, :artist, :genre
   
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@all << self
      @@count += 1

      @@artists.push(artist)
      @@genres.push(genre)
    end
   
    def self.all
      @@all
    end

    def self.count
        return @@count
    end

    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each do |genre|
            if genre_count[genre] != 0
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        return genre_count
    end

    def self.artist_count
        aritist_count = Hash.new(0)
        @@artists.each do |artist|
            if aritist_count[artist] != 0
                aritist_count[artist] += 1
            else
                aritist_count[artist] = 1
            end
        end
        return aritist_count
    end

    def self.artists
       return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
     end
  end