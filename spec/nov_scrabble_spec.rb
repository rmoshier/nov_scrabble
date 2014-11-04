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

end
