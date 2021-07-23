def hipsterfy(word)
    vowels = "aeiou"
    parts = word.split("")
    (parts.length-1).downto(0).each do |i|
        if vowels.include?(parts[i])
            parts.delete_at(i)
            return parts.join("")
        end
    end
    word
end

def vowel_counts(str)
    hashy = Hash.new(0)
    vowels = "aeiou"
    str.downcase.each_char do |char|
        if vowels.include?(char)
            hashy[char] +=1
        end
    end
    hashy
end

def caesar_cipher(str, num)
alphabet = ("a".."z").to_a
new_str = ""
    str.each_char do |char|
        if alphabet.include?(char)
            origin_idx = alphabet.index(char)
            new_idx = origin_idx + num
            new_str += alphabet[new_idx % 26]
        else
            new_str +=char
        end 
        end
    new_str
end