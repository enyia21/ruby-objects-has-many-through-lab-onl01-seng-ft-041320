class Artist

    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def new_song(song_title, genre)
        #A song should be initialized with a name, an artist, and a genre
        Song.new(song_title, self, genre)
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def genres
        songs.map{|song| song.genre}
    end
end
