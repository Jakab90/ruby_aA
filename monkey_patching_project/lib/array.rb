# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.empty? 
        self.max - self.min
    end

    def average
        return nil if self.empty? 
        self.sum / (self.length * 1.0)
    end

    def median 
        return nil if self.empty?
        sorta = self.sort
        if sorta.length.odd?
            return sorta[self.length/2]
        else
         (sorta[(sorta.length/2)] + sorta[(sorta.length/2) - 1]) / 2.0
        end
    end   
    def counts 
        hashly = Hash.new(0)
        self.each do |ele|
            hashly[ele] += 1
        end
        hashly
    end

    def my_count(val)
        hashly = Hash.new(0)
        self.each do |ele|
            hashly[ele] += 1
        end
        hashly[val]
    end

    def my_index(val)
        self.each_with_index do |ele, idx|
            return nil if self.none?(val) == true
            if ele == val
                return idx 
            end
        end
    end
    def my_uniq
        hash = {}
        self.each { |ele| hash[ele] = true}
        hash.keys
    end             

    def my_transpose
        newArr = []
        (0...self.length).each do |row|
            newRow = []
            (0...self.length).each do |col|
                newRow << self[col][row]
            end
            newArr << newRow
        end
        newArr
    end
end
