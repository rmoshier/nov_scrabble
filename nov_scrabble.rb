class Scrabble

  SCORE_HASH = {
    "A" => 1,
    "E" => 1,
    "I" => 1,
    "O" => 1,
    "U" => 1,
    "L" => 1,
    "N" => 1,
    "R" => 1,
    "S" => 1,
    "T" => 1,
    "D" => 2,
    "G" => 2,
    "B" => 3,
    "C" => 3,
    "M" => 3,
    "P" => 3,
    "F" => 4,
    "H" => 4,
    "V" => 4,
    "W" => 4,
    "Y" => 4,
    "K" => 5,
    "J" => 8,
    "X" => 8,
    "Q" => 10,
    "Z" => 10
  }

  def self.score(word)
    score = 0
    word.upcase.chars.each { |letter| score += SCORE_HASH[letter] }
    score
  end

end

# self.highest_score_from(array_of_words) returns the word in the array with the
  # highest score.
  
  # Note that it’s better to use fewer tiles, so if the top score is tied between
    # multiple words, pick the one with the fewest letters.
  # But there is a bonus for using all seven letters. If one of the highest scores
    # uses all seven letters, pick that one
  # But if the there are multiple words that are the same score and same length,
    # pick the first one in supplied list`
