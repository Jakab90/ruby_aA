class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]


  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.each do |chr|
      if chr == char
        return true
      end
      return false
    end
  end

  def get_matching_indices(char)
    newArr = []
    splits = @secret_word.split("")
    splits.each_with_index do |chr, idx|
      if char == chr
        newArr << idx
      end
    end
    newArr
  end

  def fill_indices(char, arr_indices)
    arr_indices.each do |inx|
      @guess_word[inx] = char
    end
  end

  def try_guess(char)
    if self.already_attempted?(char) == true
      puts "that char has already been guessed"
      return false
    end

    @attempted_chars << char

    matching_indices = self.get_matching_indices(char)
    if matching_indices.empty?
      @remaining_incorrect_guesses -= 1
    else
      self.fill_indices(char, matching_indices)
    end

    true
  end

  def ask_user_for_guess
  print "Enter a char:"
  char = gets.chomp
  self.try_guess(char)
  end

  def win?
    if @secret_word == @guess_word.join("")
      puts "YOU WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "YOU LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if win? || lose?
      puts "The word was " + @secret_word
      return true
    else
      return false
    end
  end
end
