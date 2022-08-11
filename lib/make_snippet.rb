# A method called make_snippet that takes a string as an argument and returns 
# the first five words and then a '...' if there are more than that.

def make_snippet(string, maxwords = 5)
    if string == "" || string == " "
        return "Empty string"
    else
        if string.split.length > maxwords
            puts string.split
            return string.split[0,maxwords].join(" ") + "."*3
        else
            return string
        end
    end
end