require "single_class_challenge"

RSpec.describe GrammarStats do
    describe "#check" do

        it "fails" do
            grammar_stats = GrammarStats.new 
            expect {raise ArgumentError, "No input"}.to raise_error "No input"
        end


        it "#checks if the text starts with a capital letter and ends with a full stop" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("hello " * 200)
        expect(result).to eq false
        end 

        it "#checks if the text starts with a capital letter but doesn't end with a full stop" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("Hello mate")
        expect(result).to eq false
        end 

        it "#checks if the text starts with a capital letter and ends with a full stop" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("hello mate.")
        expect(result).to eq false
        end 

        it "#checks if the text starts with a capital letter and ends with a" do
        grammar_stats = GrammarStats.new
        result = grammar_stats.check("Welcome to London.")
        expect(result).to eq true
        end 
    end

    describe "percentage good" do
        it "Returns as an integer the percentage of texts checked so far that passed" do
        grammar_stats = GrammarStats.new 
        grammar_stats.check("Welcome to London.")
        grammar_stats.check("jelcome to London")
        grammar_stats.check("I like potatoes.")
        grammar_stats.check("I like oats.")
        result = grammar_stats.percentage_good
        expect(result).to eq 75
        end
    end
end