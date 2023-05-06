require 'pry'

def reverse_each_word(string)
    array = string.split(/ /)
    answer = ""
    array.collect do |n| 
        n = n.reverse
        if n.reverse == array.last()
            answer += n 
        else
            answer += n + " "
        end
    end
    answer
end