require "./nov_scrabble.rb"

describe Scrabble do

  describe "#self.score" do
    it "responds to 'score'" do
      expect(Scrabble).to respond_to :score
    end
  end

end