def my_min_1(arr)
    min = 0

    arr.each_with_index do |el, i|
        arr.each_with_index do |el2, j|
            if el < el2 && i < j && min > el
                min = el
            end
        end
    end
    min
end

def my_min_2(arr)
    hash = Hash.new
    (0...arr.length).each do |i|
        val = arr[i]
        hash[i] = val
    end
    hash.values.min
    # arr.inject { |acc, ele| acc < ele ? acc : ele }
end

def largest_contiguous_sub_sum(arr)
    max, n = -2 ** 30, arr.length - 1
    (0..n).each do |i|
        sum = 0
        (i..n).each do |j|
            sum += arr[j]
            max = [max, sum].max
        end
    end
    max
end

def goddness_solution(arr)
    prefix_max, max = 0, -2 ** 30
    arr.each do |ele|
        cur_sum = prefix_max + ele
        max = [cur_sum, max].max
        prefix_max = [cur_sum, 0].max
    end
    max
end

list = [-5, -1, -3]
p goddness_solution(list)