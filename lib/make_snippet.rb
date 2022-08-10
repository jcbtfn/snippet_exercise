# A method called make_snippet that takes a string as an argument and returns 
# the first five words and then a '...' if there are more than that.

def make_snippet(string)
    if string == "" || string == " "
        puts "There is no string: " + string.to_s
        return "There is no string"
    else
        count = string.count(" ") + 1
        if count > 5
            aux = string.split
            i = 0
            aux2 = ""
            while i < 5
                aux2 = aux2 + aux[i]
                if i < 4
                    aux2 = aux2 + " "
                end
                i += 1
            end
            return aux2 + "."*3
        else
            return string
        end
    end
end