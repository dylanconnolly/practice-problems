a = [1,2,3,2]

def repeated_n_times(a)
    n = (a.length)/2

    a.each do |element|
        count = a.find_all do |number|
            element == number
        end.length
        # require "pry"; binding.pry
        break(element) if count == n
    end
end

repeated_n_times(a)

require "pry"; binding.pry
