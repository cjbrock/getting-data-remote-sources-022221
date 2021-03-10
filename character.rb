class Character

    attr_accessor :name, :url, :eye_color

    @@all = []

    def initialize(char)
        @name = char[:name]
        @url = char[:url]
        @eye_color = char[:eye_color]
        @@all << self
    end

    def self.all
        @@all
    end

end