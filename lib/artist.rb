class Artist
    attr_reader :name, :genre, :song

    @@all=[]
    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        
        all_songs = Song.all.select do |song|
        song.artist == self
        end
    end
   
    def genres
        #binding.pry
            songs.map do |song|
             song.genre
            end

        
    end
end
