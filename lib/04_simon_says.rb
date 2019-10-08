def echo(string)
    string
    end
    
    def shout(string)
    string.upcase
    end
    
    def repeat(string,n=2)
    string+(" "+string)*(n-1)
    end
    
    def start_of_word(string,n)
    string[0..n-1]
    end
    
    def first_word(string)
    string.rpartition(" ").first
    end
    
    def titleize(string)
    nocaps = ["and", "the", "to", "of", "by", "from", "or"]
    array = string.split(" ")
    i = array[0].length
    string[0].capitalize+string[1..i]+string[i..string.length].split(" ").map { |word| nocaps.include?(word) ? word : word.capitalize }.join(" ")
    end