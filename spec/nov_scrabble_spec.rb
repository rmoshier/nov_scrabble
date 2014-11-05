require "./nov_scrabble.rb"

describe Scrabble do

  describe "#self.score" do
    it "responds to 'score'" do
      expect(Scrabble).to respond_to :score
    end

    it "returns total score value for a given word" do
      expect(Scrabble.score("cat")).to eq 5
    end

    it "returns an integer" do
      expect(Scrabble.score("cat")).to be_a Fixnum
    end
  end

  describe "#self.highest_score_from" do
    it "responds to 'highest_score_from'" do
      expect(Scrabble).to respond_to :highest_score_from
    end

    it "returns the word in the array with the highest score" do
      test_array = ["cat", "giraffe"]
      expect(Scrabble.highest_score_from(test_array)).to eq "giraffe"
    end
  end

end
