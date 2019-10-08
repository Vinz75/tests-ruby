def translate(string)
    vowels = 'aeiouAEIOU'
    qu = 'qu'
    array = string.split(/ /)
    for index in 0 ... array.size
    letter=array[index].split("")
    if (letter[0]+letter[1]==qu)
        letter << letter[0]+letter[1]+"ay"
        letter.shift(2) 
    elsif (!vowels.include?(letter[0]) && (letter[1]+letter[2]==qu))
        letter << letter[0]+letter[1]+letter[2]+"ay"
        letter.shift(3)
    elsif vowels.include?(letter[0])
        letter << "ay"
    elsif (!vowels.include?(letter[0]) && !vowels.include?(letter[1]) && !vowels.include?(letter[2]))
        letter << letter[0]+letter[1]+letter[2]+"ay"
        letter.shift(3)
    elsif (!vowels.include?(letter[0]) && !vowels.include?(letter[1]))
        letter << letter[0]+letter[1]+"ay"
        letter.shift(2)
    elsif !vowels.include?(letter[0])
        letter << letter[0]+"ay"
        letter.shift(1)
    end
    array[index] = letter.join
end
array.join(" ")
end
