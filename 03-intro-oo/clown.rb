require 'pry'

clown_joke = "Why don't sharks eat clowns? They taste funny."
clown_names = [ "Bluster", "Flaky", "Raspy", "Floppy", "Krusty", "Baby" ]

class Clown

    attr_reader :fear
    attr_writer :age
    attr_accessor :name, :skill

    # Initialize => Linked to Clown.new()

    def initialize(name, age, skill, fear)
        @name = name
        @age = age
        @skill = skill
        @fear = fear
    end

    def dance
        # 'self' refers to the instance calling this method
        "I am #{self.name} and I am dancing."
    end

    def cure
        @fear = "Nothing"
    end

    # Writer/Setter
    ###############
    # def name=(name_arg)
    #     # instance variable => @
    #     @name = name_arg
    # end

    # def age=(age_arg)
    #     # instance variable => @
    #     @age = age_arg
    # end

    # def skill=(skill_arg)
    #     # instance variable => @
    #     @skill = skill_arg
    # end

    # def fear=(fear_arg)
    #     # instance variable => @
    #     @fear = fear_arg
    # end

    #Reader/Getter
    ##############
    # def name 
    #     @name
    # end

    # def age
    #     @age
    # end

    # def fear
    #     @fear
    # end

    # def skill
    #     @skill
    # end

end

binding.pry
0
