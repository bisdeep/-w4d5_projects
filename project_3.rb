# require 'byebug'
require 'set'

def two_sum?(arr, target_sum)
    (0...arr.length).each do |i|
        ((i + 1)...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end
    false
end

arr = [0, 1, 5, 7]


def two_sum_2?(arr, target_sum)
    arr.sort!
    i, j = 0, arr.length - 1
    # while i < arr.length 
    #     while j > -1
    #         if arr[i] + arr[j] == target_sum
    #             return true
    #         end
    #         j -= 1
    #     end
    #     i += 1
    # end
    while i < j
        return true if arr[i] + arr[j] == target_sum
        if arr[i] + arr[j] > target_sum
            j -= 1
        else
            i += 1
        end
    end
    false
end

def two_sum_3?(arr, target_sum)
    seen = Set.new
    arr.each do |el|
        partner = target_sum - el
        return true if seen.include?(partner)
        seen << el
    end
    false
end

# debugger
p two_sum_3?(arr, 6)
p two_sum_3?(arr, 10)