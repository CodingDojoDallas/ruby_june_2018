require_relative "mammal"

class Lion < Mammal
    def initialize
        @health = 170
    end

    def fly
        @health -= 10
        p "The lion is flying!"
        self
    end

    def attack_town
        @health -= 50
        p "The lion is attacking the town!"
        self
    end

    def eat_humans
        @health += 20
        p "The lion just ate a human."
        self
    end

    def display_health
        super
        p "This is a lion and it's health is #{@health}"
    end
end

cowardly_lion = Lion.new
cowardly_lion.fly.display_health