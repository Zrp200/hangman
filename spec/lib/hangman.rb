require 'hangman'
require 'spec_helper.rb'
describe Hangman do
    hangman = Hangman.new
    describe '#display' do
        subject {hangman.display}
        it "should be an array"
        it "should have underscores"
    end
end
