class Song

    attr_accessor :artist, :genre, :name

    @@count=0
    @@genres = []
    @@artists = []

def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+= 1
    @@genres.push(genre)
    @@artists.push(artist)
    
end
 def self.count
@@count
    
end
def self.artists
  @@artists.map{ |artist| artist }.uniq
end

def self.genres
@@genres.map{ |genre| genre }.uniq

end
def self.genre_count
    @@genres.tally
end

def self.artist_count
    @@artists.tally
end

    
end