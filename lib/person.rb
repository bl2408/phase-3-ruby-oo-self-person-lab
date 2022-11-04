# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize name 
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(h)
        @happiness = check h
    end

    def hygiene=(h)
        @hygiene = check h
    end

    def happy?
        @happiness > 7
    end
    def clean?
        @hygiene > 7
    end

    def get_paid amt
        @bank_account += amt
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend person
        if person.is_a? Person
            person.happiness = person.happiness + 3
            self.happiness = @happiness + 3
            "Hi #{person.name}! It's #{name}. How are you?"
        end
    end

    def start_conversation person, topic
        if topic == "politics"
            person.happiness = (person.happiness - 2)
            self.happiness = @happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness = (person.happiness + 1)
            self.happiness = @happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    private 

    def check num
        if num < 0
            0
        elsif num > 10
            10
        else
            num
        end
    end

end

brian = Person.new("Brian")