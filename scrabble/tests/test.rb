require 'minitest/spec'
require 'minitest/autorun'
require './scrabble.rb'

describe Scrabble do

  describe "word_score" do
    it "should return 14 if word is Cabbage" do
      Scrabble.word_score("Cabbage").must_equal 14
    end

    it "should return 51 if word is JazzQuiz" do
      Scrabble.word_score("JazzQuiz").must_equal 51
    end
  end

  describe "letter_value method" do
    it "should return 10 if letter is Q" do
      Scrabble.letter_value("Q").must_equal 10
    end

    it "should return 1 if letter is A" do
      Scrabble.letter_value("A").must_equal 1
    end
  end
end
