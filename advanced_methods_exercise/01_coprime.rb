
def coprime?(num_1, num_2)
    (2..num_1).each do |divisor|
        if num_1 % divisor == 0 && num_2 % divisor == 0 
           return false
        end
    end
true
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false



