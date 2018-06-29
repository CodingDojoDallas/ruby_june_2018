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
            p "You attacked another human and their health is now #{obj.health}"
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

class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25
    end

    def heal
        if @health <= 40
            @health += 10
            p "You have healed the wizard by 10 and his health is now #{@health}"
            self
        else
            @health = 50
            p "You have healed the wizard by 10 and his health is now #{@health}"
            self
        end
    end

    def fireball obj
        obj.health -= 20
        p "Wizard attacked with fireball and now the enemies health is #{obj.health}"
        self
    end
end

gandalf = Wizard.new
gandalf.fireball(steven)

class Ninja < Human
    def initialize
        super
        @stealth = 175
    end

    def steal obj
        @health += 10
        p "Ninja stole from enemy and increased health by 10"
        self
    end

    def get_away
        @health -= 15
        p "The ninja has successfully escaped but lost 15 health."
        self
    end
end

jackie_chan = Ninja.new
jackie_chan.steal(mike)
jackie_chan.get_away
jackie_chan.display_health

class Samurai < Human
    @@total_number_of_samurai = 0
    def initialize
        super
        @health = 200
        @@total_number_of_samurai +=1
    end

    def death_blow obj
        obj.health = 0
        p "Samurai attacked with death blow and killed the enemy"
        self
    end

    def meditate
        @health = 200
        p "The samurai has mediated and his health is now full"
        self
    end

    def how_many
        p "There are #{@@total_number_of_samurai} Samurai that exist!"
        self
    end
end

bob = Samurai.new
bob.death_blow(mike)
bob2 = Samurai.new
mike.display_health
bob.meditate
bob.how_many