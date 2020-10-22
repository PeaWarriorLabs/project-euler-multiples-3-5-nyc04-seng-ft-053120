# Enter your object-oriented solution here!
class Multiples
    attr_accessor :limit, :multiples, :sum

    def initialize(limit)
        @limit = limit
        @multiples = collect_multiples
        @sum = sum_multiples
    end

    def collect_multiples
        multiples = []
        for i in 1..@limit-1 do
            multiples.push(i) if i % 3 == 0 || i % 5 == 0
        end
        multiples
    end

    def sum_multiples
        sum = 0
        @multiples.each {|multiple| sum += multiple}
        sum
    end
end