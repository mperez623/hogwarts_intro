

class HogwartsIntro::House

    @@all = []

    attr_accessor :name, :mascot

    def self.all
        @@all
    end

    def self.create_from_api(arrhsh)
        arrhsh.each do |hh|
            new(hh[:name], hh[:mascot])
        end
    end




    def initialize(name, mascot)
        @name, @mascot = name, mascot
        save
    end

    def save
        @@all << self
    end











end
