def all_words_capitalized?(arr)
    if arr.all? { |word| word.capitalize == word }
        return true
    end
    false
end
p all_words_capitalized?(["Hello", "World"])

def no_valid_url?(arr)
    vals = ['.com', '.net', '.io','.org']
    
    arr.none? do |arrs|
        vals.any? { |ending| arrs.end_with?(ending) }
    end
end
p no_valid_url?(["apt.com"])

def any_passing_students?(students)
    students.any? do |student|
        grades = student[:grades]
        avg = grades.sum / (grades.length * 1.0)
        avg >= 75 
    end
end