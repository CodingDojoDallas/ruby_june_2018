class Human
    attr_accessor :health, :strength, :intelligence, :stealth
    def initialize
        @health = 100
        @strength = 3
        @intelligence = 3
        @stealth = 3
    end

    def attack obj
        p obj.class.ancestors
        if obj.class.ancestors == self.class.ancestors
            obj.health -= @strength
            p "You attacked another human"
        end
    end

    def display_health
        p "Current health is #{@health}"
    end
end

steven = Human.new
mike = Human.new

steven.attack(mike)
mike.display_health