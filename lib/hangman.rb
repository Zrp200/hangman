
class Hangman
    # The word to be guessed
        attr_reader :actual
    # The mistake made while guessing. The game ends when @mistakes == 10
        attr_reader :mistakes
    # The letters already guessed. Helps prevent letters from being counted twice.
        attr_reader :guessed
    # Initializes the data needed for the game using parameter word as the word to be guessed
        def initialize(word=dictionary_sample)
            @actual, @mistakes, @guessed, @display = word, 0, Array.new, Array.new(@actual.length) {"_"}
        end
    private
        # returns a random word from the array
            def dictionary_sample
                %w(array dog cat hammer army card beer queen zeal quest heist soldier program three ruby coffee cash dash splash crash flash bash car plane jet zap taser gun rifle shotgun armour sword bow crossbow).sample
            end
end
