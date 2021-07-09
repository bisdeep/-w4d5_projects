# require 'byebug'

def anagram?(word1, word2)
    index = ""
    index2 = 0
    word1.each_char do |char|
        # index = char
        arr = word2.split("")
        index2 = arr.find_index(char)
        return false if index2.nil?
        # char = ""
        word2 = word2[0...index2] + word2[(index2 + 1)..-1]
        
    end
    return true if word2.empty?
    false
end

# p anagram?("gizmo", "sally")
# debugger
 

def anagram_3?(word1, word2)
    return false if word1.length != word2.length
    arr1, arr2 = word1.split("").sort, word2.split("").sort
    (0...word1.length).all? { |idx| arr1[idx] == arr2[idx] }
end



def anagram_4?(word1, word2)
    # hash = Hash.new(0)
    # word1.each_char do |char|
    #     hash[char] += 1
    #     hash[char] -= 1 if word2.include?(char)
    # end
    # arr = word2.split("")
    # arr.all? { |el| hash.key?(el) && hash[el] }
    return false if word1.length != word2.length
    hash = Hash.new(0)
    word1.each_char do |char|
        hash[char] += 1
    end
    word2.each_char do |char|
        hash[char] -= 1
        return false if hash[char] == -1
    end
    true
end

p anagram_4?("elvis", "lives")
p anagram_4?("gizmo", "sally")

p anagram_4?("egge", "gee")