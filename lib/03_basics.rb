def who_is_bigger(*array)
    if array.include?(nil)
        "nil detected"
    else
        "#{array.index(array.max).to_i.to_s(27).tr("0-9a-q", "a-z")} is bigger"
    end
    end
    
    def reverse_upcase_noLTA(string)
    string.upcase.reverse.delete'LTA'
    end
    
    def array_42(array)
    array.include?(42)
    end
    
    def magic_array(array)
        array.flatten.reject{|n| n%3==0}.map{|x| x*2}.uniq.sort
    end 