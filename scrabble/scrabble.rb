class Scrabble
  # Note I cheated to get the values hash right,
  # but cool thing is you can use integers as key values,
  # which comes in handy below.
  VALUES = {
    1 => %w{a e i o u l n r s t},
    2 => %w{d g},
    3 => %w{b c m p},
    4 => %w{f h v w y},
    5 => %w{k},
    8 => %w{j x},
    10 => %w{q z}
  }

  def self.word_score(word)
    score = 0
    word.split("").each do |letter|
      score += Scrabble.letter_value(letter)
    end
    return score
  end

  def self.letter_value(letter)
    letter.downcase!
    VALUES.each do |key, val|
      return key if val.include?(letter)
    end
  end
end
