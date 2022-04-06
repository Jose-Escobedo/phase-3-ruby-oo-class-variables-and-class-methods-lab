class Song
    attr_accessor :name, :artist, :genre
    
    

    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
    @@artists = []
    @@genres = []

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.artists
       @@artists= @@artists.uniq 
       @@artists
    end

    def self.artist_count
        @@artist_count = @@artists.tally
        @@artist_count
    end

    def self.genres
        @@genres = @@genres.uniq
        @@genres
    end

    def self.genre_count
       @@genre_count=@@genres.tally
       @@genre_count
    end

    def initialize (name, artist, genre)
        @@count = @@count +1
        @@artists = @@artists << artist 
        @@genres = @@genres << genre
        @name = name
        @artist = artist
        @genre = genre
    end

end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")
ninety_nine = Song.new("99 Problems", "Jay-Z", "rap")
hit_baby = Song.new("hit me baby one more time", "Brittany Spears", "pop")