require('pry')


def leetspeak(string)
  words = []

  string.split().each do |word|
    counter = 0
    letters = []
    word.each_char do |letter|
      if (counter == 0) & (/\W/.match(letter))
        letters.push(letter)
        next
      elsif (counter != 0) & ((letter == 's') | (letter == 'S'))
        letters.push('z')
      elsif(letter == 'e') | (letter == 'E')
        letters.push('3')
      elsif(letter == 'o') | (letter == 'O')
        letters.push('0')
      elsif(letter == 'I')
        letters.push('1')
      else
        letters.push(letter)
      end
      counter += 1
    end
    words.push(letters.join(""))
  end
  words.join(" ")
end
