class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(char_arr)
    char_arr.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end
  attr_reader :pegs
  def initialize(char_arr)
    if Code.valid_pegs?(char_arr)
       @pegs = char_arr.map { |char| char.upcase}
    else
      raise "invalid pegs"
    end
  end

  def self.random(num)
    random_pegs = []
    num.times { random_pegs << POSSIBLE_PEGS.keys.sample}
    Code.new(random_pegs)
  end
  
  def self.from_string(string)
    Code.new(string.split(""))
  end

  def [](idx)
    @pegs[idx]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    count = 0
    (0...guess.length).each do |i|
      count += 1 if guess[i] == self[i]
    end
    count
  end

  def num_near_matches(guess_code)
   code_dup = self.pegs.dup
    guess_dup = guess_code.pegs.dup

    guess_dup.each_with_index do |peg, i|
      if peg == code_dup[i]
        code_dup[i] = nil
        guess_dup[i] = nil
      end
    end
    code_dup.delete(nil)
    guess_dup.delete(nil)

    count = 0
    guess_dup.each_with_index do |peg, i|
      if code_dup.include?(peg)
        count += 1
        code_dup.delete_at(code_dup.index(peg))
      end
    end
    count
  end
  def ==(guess)
    self.pegs == guess.pegs
  end

  
end
