

def my_map(arr, &prc)
    mapped = []
    arr.each do |el|
        mapped << prc.call(el)
    end
    mapped
end

my_map([1, 2, 3]) { |n| n / 2.0}

def my_select(arr,&prc)
    selected = []
    arr.each do |el|
        if prc.call(el) == true
        selected << el
        end
    end
    selected
end

p my_select([2, 3, 6, -2]) { |n| n.even? }


def my_count(arr, &prc)
     count = 0
    arr.each do |el|
        if prc.call(el) == true
        count += 1
        end
    end
    count
end   
p my_count([2, 3, 6, -2]) { |n| n.even? }

def my_any?(arr, &prc)
    arr.each do |el|
        if prc.call(el) == true
            return true
        end
    end
    false
end

def my_all?(arr, &prc)
    arr.each do |el|
        if prc.call(el) == false
            return false
        end
    end
    true
end

def my_none?(arr, &prc)
    arr.each do |el|
        if prc.call(el) == true
            return false
        end
    end
    true
end