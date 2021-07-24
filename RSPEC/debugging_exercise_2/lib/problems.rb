# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"
require "prime"
def largest_prime_factor(numbNumbJuice)
# debugger
optimus_prime = 0
maximo = Prime.each(numbNumbJuice) do |numb|
    if numbNumbJuice % numb == 0 && numb > optimus_prime
        optimus_prime = numb
    end
end
    return optimus_prime
end

p largest_prime_factor(69)

def unique_chars?(str)
    hashy = Hash.new(0)
    str.each_char do |char|
        hashy[char] += 1
        if hashy[char] > 1
            return false
        end
    end
    true
end

p unique_chars?("paus")

def dupe_indices(arr)
    hashly = Hash.new { |h, k| h[k] = [] }
    arr.each_with_index do |char, idx|
        hashly[char] << idx
    end
    hashly.select { |ele, arr| arr.length > 1}
end

p dupe_indices(["a","b","b","b","b","c"])

def ana_array(arr1, arr2)
    hashly = Hash.new(0)

    arr1.each do |ele|
        hashly[ele] += 1
    end

    arr2.each do |ele|
        hashly[ele] += 1
    end   

hashly.each_key do |k|
    if hashly[k] % 2 != 0
        return false
    end
end
      true

end

p ana_array(["b"], ["a"])