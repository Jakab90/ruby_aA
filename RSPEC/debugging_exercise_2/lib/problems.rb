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


# def prime(num)
#     return false if num < 2

#     (2...num).each do |factor|
#         if num % factor == 0
#             return false
#         else
#             return true
#         end
#     end