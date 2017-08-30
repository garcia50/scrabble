require './word_finder'
require './word_list'

class Scrabble
  attr_accessor :point_values

  def initialize(word, score)
    @word = word    
    @score = 0
    @point_values = ''
    @letter = ''
  end

  def score(word)
   letter = word.upcase.split('')
   letter.each do |char|
    score += point_values[letter]
  end
  @score
  end

  def score_empty_string(word)
     @score << score(word) if word.empty?
  end

  def passing_nil(word)
    @score << score(word) if word == nill
  end

  def letter_multipliers(word)
   letter = word.upcase.split('')
   letter.each do |char|
   total *= point_values[letter]
    score << total
  end
  @score
  end

  def word_multiplier

  end

  def seven_letter_bonus
    
  end
  

end



game = Scrabble.new
game.score("hello")
game.score("")
game.score(nil)


