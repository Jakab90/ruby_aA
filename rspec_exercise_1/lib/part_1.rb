def average(num_1, num_2)
    return (num_1 + num_2)/2.0
end

def average_array(arr)
    return arr.sum * 1.0 / arr.length
end

def repeat(str, num)
    return str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)

    words = str.split(" ")
    sentence = []

    (0...words.length).each do |i|
        if i % 2 == 0
            sentence << words[i].upcase
        else
            sentence << words[i].downcase
        end
    end
    return sentence.join(" ")
end
            