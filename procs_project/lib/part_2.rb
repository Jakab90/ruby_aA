def reverser(word, &prc)
    reversed = word.reverse
    reversized = prc.call(reversed)
    reversized
end

def word_changer(words, &prc)
parts = words.split(" ")
arr = []
parts.each do |ele|
    els = prc.call(ele)
    arr << els
end
arr.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    if prc1.call(num) > prc2.call(num)
        return prc1.call(num)
    end
    prc2.call(num)
end

def and_selector(arr, prc1, prc2)
    truarr = []
    arr.each do |el|
        if prc1.call(el) && prc2.call(el) == true 
            truarr << el
        end
    end
truarr
end

def alternating_mapper(arr, prc1, prc2)
    newarr = []
    arr.each_with_index do |el, idx|
        if idx % 2 == 0
            newarr << prc1.call(el)
        else
            newarr << prc2.call(el)
        end
    end
    newarr
end
