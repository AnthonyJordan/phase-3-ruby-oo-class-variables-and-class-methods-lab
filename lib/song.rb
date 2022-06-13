class Song 
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres =[]
    @@artists =[]
    @@artists_dup =[]
    @@genres_dup =[]
    def initialize name,artist,genre
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        Song.genres = genre
        Song.artists = artist
    end
    def self.count
        @@count
    end
    def self.genres= genre
            @@genres << genre
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists= artist
            @@artists << artist  
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end