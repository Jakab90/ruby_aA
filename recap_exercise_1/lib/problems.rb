def all_vowel_pairs(words)
    vowels = "aeiou".split("")
    pairs = []
    (0...words.length).each do |idx1|
        (idx1 + 1...words.length).each do |idx2|
            combined = words[idx1] + " " + words[idx2]
            pairs << combined if vowels.all? { |vowel| combined.include?(vowel) }
        end
    end

    pairs

end

def composite?(num)
    (2...num).each do |i|
        if num % i == 0
            return true
        end
    end
    false
end

def find_bigrams(str, bigrams)
    bigrams.select { |bigram| str.include?(bigram) }
end

class Hash
    def my_select(&prc)
    prc ||= Proc.new { |k, v| k == v }

    selected = {}
    self.each do |k, v|
        selected[k] = v if prc.call(k, v)
    end
    selected
    end
end

class String
    def substrings(length = nil)
        subs = []
        (0...self.length).each do |start_idx|
            (start_idx...self.length).each do |end_idx|
                sub = self[start_idx..end_idx]
                subs << sub
            end
        end
        if length.nil?
            subs
        else 
            subs.select {|str| str.length == length}
        end
    end


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"
    def caesar_cipher(num)

    end
end
