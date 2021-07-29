def pow(base, exponent)
    return 1 if exponent == 0
    base * pow(base, exponent - 1)
end

def lucas_number(n)
    return 2 if n == 0
    return 1 if n == 1

    lucas_number(n - 1) + lucas_number(n - 2)
end

def sum_array(array)
    return 0 if array.empty?
    first = array[0]
    rest = array[1..-1]
    first + sum_array(rest)
end

def reverse_string(str)
    return "" if str.empty? 
    reverse_string(str[1..-1]) + str[0]
end

def flatten(data)
    return [data] if !data.is_a?(Array)

    flattened = []
    data.each { |el| flattened += flatten(el) } 
    flattened
end