# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0,10)
    end
    
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        total = @hygiene += 4 #increment and set equal to total
        self.hygiene=(total) #calls on #hygien= method to clamp ##STUDY THIS
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        hygiene = @hygiene -= 3
        self.hygiene=(hygiene) #set local hygiene variable to #hygiene= to activate coamp method
        happiness = @happiness += 2
        self.happiness=(happiness)
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        objects = [self, person]
        if topic == 'politics'
            objects.each {|o| o.happiness -= 2}
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            objects.each {|o| o.happiness += 1}
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
        


end