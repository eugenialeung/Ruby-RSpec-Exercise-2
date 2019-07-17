def partition(arr, num)
    less = []
    greater = []
    arr.each do |ele|
        if ele < num
            less << ele
        else
            greater << ele
        end
    end
    [less, greater]
end


def merge(hash_1, hash_2)
    new_hash = {}
    hash_1.each { |k, v| new_hash[k] = v }
    hash_2.each { |k,v| new_hash[k] = v }
    new_hash
end



def censor(sentence, curse_words)
    words = sentence.split(" ")
    new_words = words.map do |word|
        if curse_words.include?(word.downcase)
            star_vowels(word)
        else 
            word
        end
    end
    new_words.join(" ")
end

def star_vowels(string)
    vowels = "aeiou"
    new_string = ""
    string.each_char do |char|
        if vowels.include?(char.downcase)
            new_string += "*"
        else
            new_string += char
        end
    end
    new_string
end



def power_of_two?(number)
    product = 1
    while product < number 
        product *= 2
    end
    product == number
end



