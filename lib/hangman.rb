class GuessError < StandardError; end
class Hangman
    # The word to be guessed
        attr_reader :actual
    # The mistake made while guessing. The game ends when @mistakes == 10
        attr_reader :mistakes
    # The letters already guessed. Helps prevent letters from being counted twice.
        attr_reader :guessed
    # This is what the user should see.
        attr_reader :display
    # Initializes the data needed for the game using parameter word as the word to be guessed. Returns an new Hangman object
        def initialize(word=dictionary_sample)
            @actual, @mistakes, @guessed, @display = word, 0, Array.new, Array.new(@actual.length) {"_"}
        end
        def check(guess)
            if guess.length > 1
                raise GuessError, "Guess needs to be one character"
            elsif /[a-z]/.match(guess).nil?
                raise GuessError, "Guess needs to be a letter"
            elsif guessed.include? guess
                puts "You already guessed that"
            elsif actual.include? guess
                i = 0
                for letter in actual
                    if letter == guess.downcase
                        display[i] = letter
                    end
                    i += 1
                end
                guessed.push guess
            else
                
            end
        def incorrect(letter)
            
    private
        # returns a random word from the array
            def dictionary_sample
                %w(array dog cat hammer army card beer queen zeal quest heist soldier program three ruby coffee cash dash splash crash flash bash car plane jet zap taser gun rifle shotgun armour sword bow crossbow).sample
            end
end
