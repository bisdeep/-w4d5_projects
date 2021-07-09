# require 'queue'

def windowed_max_range(arr, w)
    sub = []
    arr.each_with_index do |el, i|
        sub << arr[i...(i + w)] if i + w <= arr.length
    end
    max = 0
    sub.each_with_index do |array, i|
        max = [array.max - array.min, max].max
    end
    max
end

def windowed_max_range_2(arr, w)
    queue, n = Queue.new, arr.length - 1
    (0..n).each do |i|
        val = arr[i]
        while queue.
        #[0, 1, 2], w = 3
        # when i = 3
    end

end



# arr = [5, 2, 1, 5]
# p max_windowed_range(arr, 3)
p windowed_max_range([1, 0, 2, 5, 4, 8], 2)
p windowed_max_range([1, 0, 2, 5, 4, 8], 3)
p windowed_max_range([1, 0, 2, 5, 4, 8], 4)
p windowed_max_range([1, 3, 2, 5, 4, 8], 5)