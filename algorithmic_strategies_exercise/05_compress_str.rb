# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    counter = 1
    compressed = []
    parts = str.split("")


    (0...parts.length).each do |i|
        if parts[i] != parts[i+1] && counter == 1
            compressed << parts[i]
        elsif parts[i] != parts[i+1]
            compressed << counter
            compressed << parts[i]
            counter = 1
        else
            counter += 1
        end
    end

    compressed.join
end
p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
