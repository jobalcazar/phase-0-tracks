class Hangman
  attr_reader :guess_count,:is_over, :word

  def initialize(word)
    @word = word
    @guess_count = word.length
    @is_over = false
    @output = "-"*(word.length)
    @is_over=false
    @guesses=[]
  end

  def check_word(guess)
    counter=0
    @word.each_char do |letter|
      if letter==guess
        @output[@word.index(counter)]= guess
      end
      counter=+1
    end
    if @guesses.include? (guess)
      guess_count
    else
      @guess_count=- 1
      @guesses.push(guess)
    end
  end

  def solve
    if @output.include? "-"
      @is_over= false
    else
      @is_over=true
    end
  end
end
puts "Welcome to the Hangman!"
puts "What word do you want your oppenent to guess?"
player_word=gets.chomp
hangman = Hangman.new(player_word)

p hangman.output
p hangman.guess_count

while !hangman.is_over
  p "What letter do you think is in the word?"
  guess=gets.chomp
  hangman.check_word(guess)
  if hangman.solve
  	puts "You solved the word:#{hangman.word}"
    puts "You had #{hangman.guess_count} guesses left!"
  else
    puts "You have #{hangman.guess_count} guesses left!"
  end
end
