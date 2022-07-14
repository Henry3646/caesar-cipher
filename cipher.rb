def Caesar_Cipher(string, shift)
    result = ''
    string.each_char do |letter|
        start = letter.ord < 91 ? 65 : 97
        if letter.ord.between?(65,90) or letter.ord.between?(97,122)
            change = (((letter.ord - start) + shift) % 26) + start
            result += change.chr
        else
            result += letter
        end
    end
    result
end

# Should return 'Iffmp'
puts Caesar_Cipher('Hello' , 1)
