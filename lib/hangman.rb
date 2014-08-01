
class Hangman
    attr_reader :actual, :display
    # Initializes the data needed for the game 
        def initialize(word=dictionary_sample)
            @actual, @display = word, Array.new(@actual.length) {"_"}
        end
    private
        # returns a random word from the array
            def dictionary_sample
                %w(array dog cat hammer army card beer queen zeal quest heist soldier program three ruby coffee cash dash splash crash flash bash car plane jet zap taser gun rifle shotgun armour sword bow crossbow).sample
            end
end
