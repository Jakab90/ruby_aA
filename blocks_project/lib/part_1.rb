def select_even_nums(arr)
    arr.select(&:even?)
end
p select_even_nums([2,3,4])

def reject_puppies(arr)
    arr.reject { |ele| ele["age"] < 3 }


end
p reject_puppies([
        {"name"=>"Fido", "age"=>3},
        {"name"=>"Spot", "age"=>2},
        {"name"=>"Rex", "age"=>5},
        {"name"=>"Gizmo", "age"=>1}
      ])

def count_positive_subarrays(array_1)
    array_1.count { |arr| arr.sum > 0 }
end
p count_positive_subarrays([
        [-2, 5],
        [1, -9, 1],
        [4, 7]
      ])

def aba_translate(str)
    vowels = "aeiou"
    news = ""
    str.chars.map do |char|
        news += char
        if vowels.include?(char)
            news += "b" + char
        end
    end
    news
end
p aba_translate("woof")

def aba_array(arr)
arr.map {|word| aba_translate(word) }
end
